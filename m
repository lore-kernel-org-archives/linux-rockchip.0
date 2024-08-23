Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05137C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VOgp2tQ8cpmZ1JodgfOSw13qKlquXJTshXrtD+2yJE=; b=FDxGnBzhCdfCJm
	i+r2sgxWp+4mumOoNfELYCp31IOPw/Ys6hrdlckPK3vVmAuzXvBS3VXAaiuw+IjJkJwi5Kfxkzdym
	Fm1mkztUotyHhmtf43fY8nPIbY3zpK8B746JT+dJMJ522jiARek55/FtxQBqgf1Sg9FfwWdaorxte
	AHE3+uQ8c9NmCbM7XJyCk1ZfgzFN3iRrlSs6plxH7M58JGhibrr4TNe/lswTZTTnym6Occ0S0a6V6
	Xbc+MDT9OlOxKGE12kj4unygp6Xr1dCv2DunTj7bLo0AlFqrv4H42QLj6YFV/wSbA6CZRMAMhnczP
	7JSu3mNilVpQPQbTEGKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVmn-0000000HCk2-1Mzx;
	Fri, 23 Aug 2024 15:01:09 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVmg-0000000HCf6-2KDA;
	Fri, 23 Aug 2024 15:01:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724425207; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=To5UpMT5/dliQ9H4Idja7g2lB6q3/OgG7JBdO2puJdy9Djf5sdK+gpBAvZxOeYOI8r4jO+6Ev0w3dMJFKytQLwPL2plv3xW+cHTcrWYdKJD4mBbWq1lZZ9zmlqdjYcx3xlCdGKht5Sgg7eyhPQpfH2+BGAiQ/ZaPtuL0VCOviWc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724425207; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=RJt+jrzVWF99BF0Fo6GrGjf19zn92AkfQ+3EHeIwT/0=; 
	b=IWoRsVDLJV863cdafosDQls3Vpdk9CryGTRLWdthI0PKe5q5YQYeculBXxwPn3wMKQ464NXtuPysATXGZ9Jc/GF/FhvTYS6xLgaDkNcb/7zx+Tdy29mGWwGMlpE2va5IMl52EQ+Qx+JOlZb8nJPpmyQXxIB+VEKMr22TQaXX0E0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724425207;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=RJt+jrzVWF99BF0Fo6GrGjf19zn92AkfQ+3EHeIwT/0=;
	b=QkeFlMnOxLHfEBRAzc6+a7D6H9g9m3EreFowds7hTH23Fd+jz8ad6VhQk3uo8+rZ
	GKhqi5I4rM9Zpg3A835zpcmN+j0Aj8ay9IMV7IASINlDE3rkD+XykRyfxgg8O85m4Ov
	PI2kc9c5i2D2wqGylVDZEDFrKg1Cg/vO0wPPBiCk=
Received: by mx.zohomail.com with SMTPS id 1724425206314104.53567088525097;
	Fri, 23 Aug 2024 08:00:06 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Lee Jones <lee@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ondrej Jirman <megi@xff.cz>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Elon Zhang <zhangzj@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Jamie Iles <jamie@jamieiles.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 08/12] dt-bindings: gpu: Add rockchip,rk3576-mali compatible
Date: Fri, 23 Aug 2024 10:52:35 -0400
Message-ID: <20240823150057.56141-9-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240823150057.56141-1-detlev.casanova@collabora.com>
References: <20240823150057.56141-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_080102_701589_FAB8C640 
X-CRM114-Status: UNSURE (   9.96  )
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

Add the rockchip,rk3576-mali in arm,mali-bifrost.yaml

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 278399adc5506..735c7f06c24e6 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -26,6 +26,7 @@ properties:
               - renesas,r9a07g054-mali
               - rockchip,px30-mali
               - rockchip,rk3568-mali
+              - rockchip,rk3576-mali
           - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
       - items:
           - enum:
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
