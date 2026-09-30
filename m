Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46ECFCA5FC1
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7SB7nX3zLAw8/hZ+VRs95j8tcxGlxgH+kL8KT/4Tts=; b=d/yW7i7MgmDdNu
	J8J65sDQ4Noq5RWEspb0rVJixYuhS3mEAmC1fIU3CqPb8huT/QhqS7GN1whxOPLC4FSLytrMBTEd6
	mFRWXE+5ZJRqlmtJPLfojTYdH+n46JWGReIw0vzTt54XzFj8UGKyR2rht2dxoGqXIkVAkAB89UAbV
	ybvZJCYoIBh7X7VznKbg4D5zknNWZKBAgoD1r/fQfMyhIOhV83vVTVEUC4yxLgjhhO8YTOQrVzZzI
	2u8Hwvt7Lkm8f/hndHSgy/2LlDfcJAzAzrzSQuR/oCFoSQAPfNSjjlYTjlIBvycsHImHr3L35iHKi
	Hkapv3xMpgS9cAMQ6w5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqeH-00000005ZRf-0FvI;
	Wed, 30 Sep 2026 09:30:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqe9-00000005ZO9-3NDW
	for linux-rockchip@bombadil.infradead.org;
	Wed, 30 Sep 2026 09:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Zhvlpv/etnxxE1xo+vE8I3wMg7dBPdkR6wAnk76hoag=; b=GS0OQyDjEMMbVMMmAWmX6fkF/S
	HqWkbtECWR4u0G28+Kr+aK0uCVnPVTd+R0ZLZ1ll3CZZlXNz1BLSl4h1bhR8YEyuCvmlTGI5gdHNh
	85OmubZ2/E1BhmuFVSZ08mzOxnAfVDcDMosMLR5xxAva1aHZiYYyXSc1Vltk3mtqrdZtnbjXL5DNu
	KJuJnfWgzVkNGu/jWY/x0gnRieXgQ0oUTMSx5cZC6QqzN+sV9MhuQx/3dmIoYHzHlXvAFAqidIPSY
	9VNjEA/l++n1IQOe3HJX2jW18H6ys7LOHYWvPoxdKBe4ouYrG46GfZQ0k2waMTw78ONAldlssxaxv
	c+ozMR2Q==;
Received: from mail-ed2-x29.google.com ([2a00:1450:4864:33::29])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBqe6-00000003aAf-1EVz
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Sep 2026 09:30:40 +0000
Received: by mail-ed2-x29.google.com with SMTP id 4fb4d7f45d1cf-6aa0ee64afdso6169549a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2026 02:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790760636; x=1791365436; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Zhvlpv/etnxxE1xo+vE8I3wMg7dBPdkR6wAnk76hoag=;
        b=gZ6LUAsAsQdGTlVlGOZ1QIZPPizbD1cNN+Q5DAIUyp3TGHcceXyQtamcikolooDm0n
         t0XIER/u0wTLAXT99h32LqRmlLCZu5+saHVYTDX1r5TPe8spWD9WTg5NoahCMblr0xgu
         taBkuFr7M1B2VxeHtSsE7i+38UowJxZCegAdK7yZT8y4fAQwnPUAooHKiahNPoNC2zLy
         o5RT0s0nKCM1xvDO13RJRG0JszYed/3s/QSV5TfzxJdG1RcSrT0LCFnfAC+WXAkpsZqg
         yM/Ejcm4GjcXJfNMok3pOqxjE1RAlMnE2AWmjXkqXENJzDKGU+lTq5We23HszNi/zI+B
         0ukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790760636; x=1791365436;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Zhvlpv/etnxxE1xo+vE8I3wMg7dBPdkR6wAnk76hoag=;
        b=CpJMfHcaLdvuIQgoU5bjyJPllDNzNBSZnY02sJLZWGhqmqOW1394cFfslR8uh1VMSP
         A23qre7DfdVZlzXSbj6QzRrYqG/emmWyXLXSZQUM54TtoCv3O6EKDLvF2+wODWB59QE9
         mW6xkr31zQFBwdlrCN2i/rKs1hl5zPAAJd5Xxb6eLpRJ3epsw/QU8f6rVBjJO0dLtO1W
         cmQ7sPIsVtW/X/C4YD2SCQlQqGQJssuY/O4z0iLh3aI3fdz4NYl4Ijg1ac5+BozVfmns
         93agtzja/xhBSA59CiLmWjuKYKDXNcqybud3CrtoGm4epPQDRSA9lmVg9hVg7TpgGin4
         oPdA==
X-Forwarded-Encrypted: i=1; AKwUvBzkKuk9O/ydbu9+sEbPkzRxMAtYSTi8XoGuaR05QM1rcsu1EIXUXwmx23OxswkH/3uODvomolZq8Ayo/7qsLw==@lists.infradead.org
X-Gm-Message-State: AFq9FYLuZtPIxm8sbrOa2ffoHClXr8K6/XxV6hS4Rr9BE9jb4VEaMv55
	/IUXFOsTnar1TXohjmnb3NDlLoWEwq0yV/vtX6dCxHvprBzT8ayR9qgE
X-Gm-Gg: AYBFou1oF8o6MtcqlvdHN7Z6hrQhht3bZVPL0W0X7aM4l/h5kaxNQiLoiThk+nhcp5K
	C4hrVgRlacEKoFnIRupZKVFImwngyzfd1rK46C/qOrIEhqyxV6Cora2mRhAIrXQ0KZkWAE3CE8J
	1d3TVcDy4or/irfy7FYCuyXSwpxqr1PwZzdcUh/QLEF3OoP4R2hqrxbH4h35tT/Wt01EwNgCphF
	ES2NK4UzlNwUh2EeZBezYftRiawg2oM257bk2PRy06BAJvYkqz3dAzyXUNKNe0hxUZZUUP74557
	PdQSitU553QzYa+oAq6G/REBVfQ0X31e+CBW4o/0cfkIkVzGBWj8yXlhlYBh0ewJUQIwDh5nQLx
	1aJIlEbcoiwJGWWD9yrx34iLCyuB2bPbjav4tgvHLE7cmvP1Lpo2amcToskSNe/pfRqyO4ff4sf
	LROkxv3wZyPDsFIlQV9vpsCnUxWqskmmq6gfeqCSr5R3qVNznvwHVhRav45OfNkMJ5czmNwzcwW
	WYLRzhRAR4=
X-Received: by 2002:a05:6402:27d0:b0:6ac:68a3:3c30 with SMTP id 4fb4d7f45d1cf-6ae1992b71dmr568888a12.14.1790760636516;
        Wed, 30 Sep 2026 02:30:36 -0700 (PDT)
Received: from localhost.localdomain ([193.107.16.39])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ae1568e8b2sm485221a12.19.2026.09.30.02.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 02:30:36 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Date: Wed, 30 Sep 2026 14:29:04 +0500
Subject: [PATCH 1/4] dt-bindings: arm: rockchip: add Forlinx FET3568-C
MIME-Version: 1.0
Message-Id: <20260930-ok3568-c-v1-1-a0ffd55f5c95@gmail.com>
References: <20260930-ok3568-c-v1-0-a0ffd55f5c95@gmail.com>
In-Reply-To: <20260930-ok3568-c-v1-0-a0ffd55f5c95@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Dmitry Yashin <dmt.yashin@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790760632; l=1111;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=jBOWfAe/37a+DtWsY4pcfCQdJQrauO++5rYgJh/u5TQ=;
 b=S0YR/mEpWlrZhLop51WlR9UQ85qM7F+MHMXdP7xV2ma/HTK6GtzwTTt6llNqEnCLT+cEvMpYG
 44HTadK8PWmDm3OWjTt7yWUx1aR1NxHfxb7wmEM91MYmPejst8jsK+H
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_103038_692219_B4FDDD40 
X-CRM114-Status: GOOD (  10.31  )
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

FET3568-C is an System on Module made by Forlinx based on Rockchip RK3568.
This SoM used by OK3568-C Board.

FET3568-C features:
- Rockchip RK3568
- DDR4 1/2/4/8 GB
- eMMC 8/16/32/64 GB
- RK809 PMIC

Add devicetree binding for Forlinx FET3568-C SoM.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843f74..30a6794861cc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -324,6 +324,13 @@ properties:
           - const: firefly,rk3568-roc-pc
           - const: rockchip,rk3568
 
+      - description: Forlinx FET3568-C SoM
+        items:
+          - enum:
+              - forlinx,ok3568-c
+          - const: forlinx,fet3568-c
+          - const: rockchip,rk3568
+
       - description: Forlinx FET3588-C SoM
         items:
           - enum:

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
