```
// seed the db
~/Projects/cisco ❯ coffee bin/createProducts.coffee

// creating Todd
~/Projects/cisco ❯ coffee bin/createUser.coffee --name Todd --age 25
User ID: w0xqqLBKwi4z846sXijFkQAAAUxTg_eCpU4xHIlyV-A
Done

// Todd buys an Oak Door
~/Projects/cisco ❯ coffee bin/createEvent.coffee --event buy --user OymSJBfqvGLYA7EH7RpdkwAAAUxThG4Siavw0QlwtsU --product ccfb401a-088e-41e3-8d60-f3b4621ecebz
Event ID: iZN-qK5Tcce6sHjHjCmM5gAAAUxTkMC3qeROC8vfKz8
Done

// Todd buys Oak Wood Varnish 711
~/Projects/cisco ❯ coffee bin/createEvent.coffee --event buy --user OymSJBfqvGLYA7EH7RpdkwAAAUxThG4Siavw0QlwtsU --product ccfb401a-088e-41e3-8d60-f3b4621ecebx
Event ID: iZN-qK5Tcce6sHjHjCmM5gAAAUxTkUVprXq1q4QfgPw
Done

// Create Mary
~/Projects/cisco ❯ coffee bin/createUser.coffee --name Mary --age 24
User ID: yMMqdt2kVaumK2wJZl3QpQAAAUxTkZuNl3LluSuw0Y8
Done

// Mary is looking at Oak Door and wants to know what other users usually get. She gets recommended Oak Varnish
~/Projects/cisco ❯ coffee bin/getComplementary.coffee --user yMMqdt2kVaumK2wJZl3QpQAAAUxTkZuNl3LluSuw0Y8 --items ccfb401a-088e-41e3-8d60-f3b4621ecebz
Response {
  "rules": [
    {
      "cond": [
        "ccfb401a-088e-41e3-8d60-f3b4621ecebz"
      ],
      "itemScores": [
        {
          "item": "ccfb401a-088e-41e3-8d60-f3b4621ecebx",
          "support": 1,
          "confidence": 1,
          "lift": 1
        }
      ]
    }
  ]
}
Done
```