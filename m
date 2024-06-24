Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C74EC2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 17:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jxJL282zWRziOk1xCTEgo29u8bNjJ2+YTEm5Y7IsrfY=; b=YZNbgXYVpYZSmr
	bInCnFLcBWCiF/8MjpRFL/zXNwdjvKhaRr+GLWqqSleOf6ggyOsc7ZAVRt0olW4iGntmNhT8PO/Z9
	QApc01O/hCIIl3RUwpE6HrLjHn4UlCKJQIqu4fPAm8Yc01ptMlttF+Q48p0OO6v886nMP6O8v+1p4
	DXW4cxQzHRd8iudKwZCrzqpTJUl3UsJ/muRnzBX7VjbDYh7MRm5ugv65yp00nD9fOifGIR+widupS
	uGKroa0w7pdbp4AJalEXgAMFhwdsine2W0q9Qx3tjYJaTTdt+N8vX1vEKN2fThHyC0gt66POCH0Ud
	XcC9bLHs1VOuWca2BhyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnj8-000000008Qs-2aDT;
	Mon, 24 Jun 2024 17:43:38 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnj2-000000008Pq-0jJr;
	Mon, 24 Jun 2024 17:43:33 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-57d26a4ee65so4331863a12.2;
        Mon, 24 Jun 2024 10:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719251010; x=1719855810; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L+lSKICwKIdtSkK9lQl+OJqVa8pdF3gRpXCDKOHiiJ8=;
        b=ArR2SimutYmc5m9IgC3sjeQjmusm/m7XTC7sGPgFP1pNbZZl+7d0qB9XOrjSLEkfZM
         oJkSwZ7cPxVG5BMb+S2moFu7jyu74ClCXfxTCm34WS3Xrsk+RJdRa+OsUjLU2wXalEVQ
         hzJE4vBWyWOLZ3s05J1rmcKM4S09Brr5ZqZwQdoJDzpwyrB5D0F0n5P2LOPmV3uwhi/8
         pMbb/UGZ0xbiBun7sjDxNaIa0HriJfXg8tp//nBCVk7inTLqOIjrjIg0eigRfP4jAqwh
         66z8PMSta0RHYLJrr9F5w4qJ7ZTi7tk9xeaZA63x2UsGTDxvoS0MFfqS8QcfNEjd9lyH
         TD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719251010; x=1719855810;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L+lSKICwKIdtSkK9lQl+OJqVa8pdF3gRpXCDKOHiiJ8=;
        b=ajvD2G9+bh5ZT+1mPMNqGQqm+l6Gu7Fsgtu+jA4HiPG9VW13p7tF0K2y8keIAaSCDq
         EiQd9ubo/5bvKhsj0RQRnq1/9gIcrviBAYDjFWt6HT1QYE1Ij6uAxfn4PXaYXOKUoFzQ
         jwGDdbNZAKyDDqXacki8hulxdL1u5Csvb1v1u3w+SQcAjX6BphkcxDRQ4PoR+CFZOSUE
         VoMcjag60FBlBrXpRF8R7+kwssPHfqW7mmptrUc09XqVwpcOS+eTeBQmQI9Yk70dYLl+
         LShIZoBBOlItqOC05JHj1R+6WQiCRi793AreDfJ7ysFHQrfamBbCqbFqq2OLePicuOZN
         Ouyg==
X-Forwarded-Encrypted: i=1; AJvYcCXuExashjAgXzUzkMKjvooIvFsspDDJaM2DTuvU+CDG+qtx8jlYwso0kblPxJZnDtDpQMxfeUdY1pxbLbQsg9rGGWBhx4zoD4nwmc+uy+BFw9QFl19RuqAjTwbI1bP9ir9QwlfJHruHetwLlu7dD//E1FECej+eP+E=
X-Gm-Message-State: AOJu0YxmBm7KSt6ZAQXaygu5ofWV91hB9XrxCpQFcUtgCCFIGlZcts5h
	sLSVuuRIOyXep85qjiQBftAd5AvHtHW4Kf4+iaqofALyfi0je27tvPSC0A==
X-Google-Smtp-Source: AGHT+IFRm8WW9olx0Eld72eMp/pkrAuCiI9962yug8FqjUKRgG78eHmwQkGVhlbFo3Exv938w+Aofw==
X-Received: by 2002:a05:6402:270c:b0:57d:6079:3916 with SMTP id 4fb4d7f45d1cf-57d607939edmr2112010a12.26.1719251010277;
        Mon, 24 Jun 2024 10:43:30 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d3040f003sm4944936a12.29.2024.06.24.10.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 10:43:30 -0700 (PDT)
Message-ID: <55d302e5-c018-4b93-84c1-8cf75162e939@gmail.com>
Date: Mon, 24 Jun 2024 19:43:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3036: add #sound-dai-cells to hdmi
 node
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_104332_249474_67B0B86E 
X-CRM114-Status: UNSURE (   8.16  )
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

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property,
so add them to the 'hdmi' node for 'rk3036.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 04af224005f8..96279d1e02fe 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -402,6 +402,7 @@ hdmi: hdmi@20034000 {
 		rockchip,grf = <&grf>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmi_ctl>;
+		#sound-dai-cells = <0>;
 		status = "disabled";

 		ports {
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
