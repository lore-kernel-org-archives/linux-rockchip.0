Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3970FC61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DWVRV16lnEo5GhVZWoNpRJlsyOca8FYpDFp9tGzOZM=; b=0rTnrQefZqXMsR
	XLWIozQi4QYrRPnkRkeu+iSg6jSmpjKA95itQeolVH7iGB4K7wIdz4ww96mUIIav0hpzBAbsQl/R7
	XyEzF+eNswHbbccfkBinpvglTSSbY/14cZBB8jurGsa6McQy0+SRCv+1Ysc2EST1SNvUNiXhUrmAY
	f50foD+wRL3WX3XZJVYRzyCMQS2g4odkJ7oZ164xPEtYYVq5SnvQ9PhsiRxjdodSPe8dS7AJTESVJ
	Otb+8YVZynM3NYP/3UQhL40EgJzfNtj/2E4hFSBrcoHOCi3uocEwKbtfZSUDvemv+GfaKk8l5arqM
	0wvItzxAyCeKythjig9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mHN-001nOI-0a;
	Wed, 22 Nov 2023 12:24:29 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mHJ-001nL3-1Z;
	Wed, 22 Nov 2023 12:24:27 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 0F8AA3200B1D;
	Wed, 22 Nov 2023 07:24:23 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 22 Nov 2023 07:24:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655863; x=
	1700742263; bh=5N+6zMeQUJaK0yTZzxT4LTC1/MrDx41jPB5ONB6aYCc=; b=o
	rAdH6jK6kl0cou2igxniaKRkUsdQYSFVOX5h2BXQ9tHN7LiiPBGQoI8uNSIddZ06
	DUfPKlsIuyjrIa+zu0UoEDJUNNCnhnyB03Ecxey7IA39Nhisy18GFAa5m/uA/8TV
	3SM6Bk/+ff47XFxP4HF5pLfFjGqOoJZ6G7/tmVZrKo2viNIb4f/C7gX+wkyyQ+iN
	6KNizMnB/muBNj4Zigje0mH6J95u3OIU5zUf0aNwRUXUOnsA0XqlgfNFFTOaC90E
	enFJrAz7tn/HE90c9S4uMa6TbpAYbihQil6iXfUcapPGT8kcgWcg2Uy9qJI+8ZYf
	2dtaNrEOyWODo2Ja5rhKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655863; x=
	1700742263; bh=5N+6zMeQUJaK0yTZzxT4LTC1/MrDx41jPB5ONB6aYCc=; b=o
	26A5FaIsNCQeega88cpk0h/3fh7X7Sfkrf17GmXhTeW1iiQBaWvxC5bkOerxcJJU
	4jjNKauHcvEMIRuwc9U4MJq/TYbAEsdm7FzY8SdsFZTA1ClloLfz6Tdw47DgaKTC
	HEtyRBVfrhKyk+vvV5fYSHXHv1B0Ev6FXl5sYA/d+ryGzHYqT4755mi/JHLvaOtV
	nhJqXs/hMoJN0xuhoETpnxJySc8I7z6kOLihwnXE0KW6RQbzFxRyypdz6qtv89xd
	maJQY/pZx97QQR/ddEcMCLjsVR9gcJs1zdVQt7cM2pm4GEqu4Fj7JBraUByWst7E
	Bgtkfb7SwXnCnP6S55GRg==
X-ME-Sender: <xms:9_JdZbOzo4kDvhewMUFmqISShlJaxC2usIP2NfBsjqSPR44isoFJAg>
    <xme:9_JdZV9xINlZvgZZj3Ae6LRrqL-Pc5vn9Z7LopwTiQuGB4ClfWfhKlkpiuRzxMKZa
    eGY9B0sEA>
X-ME-Received: <xmr:9_JdZaT3n3Xmkgiu0jerKropPdPkWZZGDFMd5Ac8RsN68Sy3akEq7pLYhlllZIqhH_2uj5e-D1D3t_TJcS0kKZ9Rdsa63DtFiyI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:9_JdZfs0rZXHD_1ARoyPPrveq81iD0C6Xru1iNEx3_Ww1ydZCfDZZw>
    <xmx:9_JdZTfVABbna-9Knx_DjIbil477XQK7MjzZ6yH3UK9bSRmSu0suCw>
    <xmx:9_JdZb3OhN9VnEPot789HzlnSss2YqiHS6DcVFKC-_UvkUeloJnC6w>
    <xmx:9_JdZSwRjAuOzCI3YMsFoMBq_vLZyHdqTmolD0qsDxYkfu2n5kHWYA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:24:18 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:24:15 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 9/9] dt-bindings: arm: rockchip: Add Sonoff iHost
Date: Wed, 22 Nov 2023 23:22:32 +1100
Message-Id: <20231122122232.952696-10-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231122122232.952696-1-tim@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_042425_553366_04E1FDF0 
X-CRM114-Status: UNSURE (   8.93  )
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

Sonoff iHost is a smart home hub with built in radios for wifi/bt
and Zigbee. It is based off the Rockchip RV1126 (or RV1109) SoC.

Signed-off-by: Tim Lunn <tim@feathertop.org>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes in v2:
- Collect Robh Ack for dt-bindings patch

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..a26bbcd00deb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -922,6 +922,13 @@ properties:
           - const: rockchip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
+      - description: Sonoff iHost Smart Home Hub
+        items:
+          - const: itead,sonoff-ihost
+          - enum:
+              - rockchip,rv1126
+              - rockchip,rv1109
+
 additionalProperties: true
 
 ...
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
