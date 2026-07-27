Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07FABC54EFC
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 16:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=OqFS8Yqu45aToy
	fClp/RKyu6YfIkbJLbn7IoNWkSOU8WV5iJ/zmJl0o2SbV1FQbE4tii9hI3AohrWdlp1zVvkSmFb0v
	9DB4koO6EJ9ZguHchkzwmnskJZ38bZxaX0QnqdE3UDUpZp/SETC9tip4O3MFpccqni57+ESakykua
	vjsUd9jB5vN1jHc2tae4DvE3bFyoc0t6TY7XyY65Qm3GMN217d8p50ZRnG5Lay29GomvlOyXZ4BTJ
	y0fdrNXGKafVRs7obrkvi5udljARVe058i60xC5bnlWfSeEe9jab7n/qvc1jFMwitveSuKhDpwf1i
	Cgq5s+bPxznkghUU43jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOXO-00000003RaM-27Km;
	Mon, 27 Jul 2026 16:50:46 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOXM-00000003RZ3-0aLz
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 16:50:45 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-4a496b6cc3dso1089797b6e.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 09:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785171043; x=1785775843; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=naz8iMeJLu0Nb/SkBzULjX1Np/Wx3buvBnU2CzST8uJb3dhGhBofLUlYvkrp5vObiD
         cFVG2Afr50e4Yj0/qpWVW6azhdRfq5Dp5m0bxfVGnNKdzhi2yQ57CeRJIy0Ca05431XW
         MQSdHestgf++jk4Qq9lD/dFglPscQzgRTJjoTRqL19a6ldM3Dq2pDhuRtGuA064TDPfv
         93pHfAZimiB3BfJ6upaTPDMJGG5PRlRRXSLjC0kV3YvoHst5XL/197C1hPTxodzr9Je2
         h4azZ8AkebhPAuUPDETU7U4iVLVNIyUl1GDcIzjk7KNH3/8wOzaUfZ52HwUyIfbqz/A8
         t17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785171043; x=1785775843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=bQVTM/g3/x/yhkV1HCOoQjT2wtjU77I3l7OZBtdOKr22xRSx9HSg1KnocWQj98iRub
         t3d2RpmcwVIdyd++azMvc+iDcshe6fW1ZAXpd1ZZYNR8zj0cxL50fBsfTJsFGuKDM0R+
         ZUF/MPAhc4GrPqZgjkOlC7LsmpqmQEOvZgt2chEbGFXu2QYaXrs0wqRhNMKTHufjs9Vy
         LjGUU3dVu6FfFtDpBoR76D/ruRkW3a3GzyqsbsGt/bTibIu6kwQqb09/7Wkdkk5+Xf4c
         CLim/vhU8DcLB3Pq0dthtdD5piLndxpaju0BwwZHLz6arQOeg0WwxVYocY8GD2TM4HJ8
         V4TA==
X-Forwarded-Encrypted: i=1; AHgh+RpzmqT8DXZw+ttYxRO3miUVktifo8XApXiNAhtt7ZEgTfsbozBX7UTaoO2ueCmPF5KsCEGM7QaogBfL1MioSw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOAEJftkhNy7zOITGP8TwZPlZFMTpjZu3pxhEV21MnAhsyU7Je
	cmTixaQ6Dvh9FSAYEFJShNNYtp3FYysXdEeV6XzXDvej+T5aIi7gt8VR
X-Gm-Gg: AR+sD12SXg6JvMT2KWr8E/dQ7PUgPhS0H5f4Gf9Qj32L+emTOhvFJnoWYqXMvgeiwhr
	JBnS/3mYifkP+N8P22/nZ4ZSLI6x6NTDHkMmyO2ASwH3+VCBtBlCczO0m8Z/lxkhCxeI2Y8ChwE
	3dfthi7H0T8Fesgt1JpvOb4gOuRwDLXqNc3or1dIMgr4q18NdvLf4XgwYNy9+b28uQkzeiVamBS
	xHn8MX5aWidv1xlb5yh6l9gHMeD2zcS1LKFOBe74L/mpJtLSk9x0yF5m/lePGCKgWZluzqbxOKR
	pBF1rulbg53fF6dVppIRS/5AD1IOK/4EQW+ItAasq7FXVqo3ii8cFGsmmNBjrjHWUUTkS+2t8lp
	GaK3mlsKEBW05AKbeFrVyImE9vKrgcFkQUtAVWkf0eDDzJ7hHTtjrPbAPQQoCgP3Fgkfv0+T4q3
	Q6W+jUv2KRsppjAkamGZsR
X-Received: by 2002:a05:6808:6412:b0:496:daf:8709 with SMTP id 5614622812f47-4ad55b74594mr87136b6e.17.1785171043109;
        Mon, 27 Jul 2026 09:50:43 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:30e7:7cd7:b59:5863])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ab0c7a1912sm11395050b6e.2.2026.07.27.09.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 09:50:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V20 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix
Date: Mon, 27 Jul 2026 11:48:05 -0500
Message-ID: <20260727164815.65190-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260727164815.65190-1-macroalpha82@gmail.com>
References: <20260727164815.65190-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_095044_183801_0AA2A72D 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

Add mount-matrix attribute to schema. This attribute has been supported
since the first revision of this driver, but was not documented.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..9b2af104f186 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -53,6 +53,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
