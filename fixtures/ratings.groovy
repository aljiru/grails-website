import org.grails.rateable.Rating
import org.grails.rateable.RatingLink

fixture {
    def userClass = "org.grails.auth.User"
    
    peterGemfireRating(Rating,
            stars: 5.0,
            raterId: peter.id,
            raterClass: userClass,
            dateCreated: new Date(),
            lastUpdated: new Date())
    pgrLink(RatingLink, rating: peterGemfireRating, ratingRef: gemfire.id, type: "plugin")

    dilbertGemfireRating(Rating,
            stars: 4.0,
            raterId: dilbert.id,
            raterClass: userClass,
            dateCreated: new Date(),
            lastUpdated: new Date())
    dgrLink(RatingLink, rating: dilbertGemfireRating, ratingRef: gemfire.id, type: "plugin")

    dilbertShiroRating(Rating,
            stars: 3.8,
            raterId: dilbert.id,
            raterClass: userClass,
            dateCreated: new Date(),
            lastUpdated: new Date())
    dsrLink(RatingLink, rating: dilbertShiroRating, ratingRef: shiro.id, type: "plugin")
}
