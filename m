Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C36EC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 16:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPpc7HORRu2Hr4nsR9K76LraIeZ5qANf9mOOr1X7vCA=; b=K9UjpNG0qxyUVY
	3S+Ch9xweQWnHK8yFj35TUmKqUrAjw78p0jy5pq6FCYoyNYj4Mkm43jeNsAN+uVBnUnsE734aXjtQ
	5tDjxWV5m8eogkguZ143bDdHqyXdTKG8p0bBy4CnvfHmHfq0hM+iZAUvcgBkAbLuDvROYW2Ia3nNc
	FEbIXlNg016B0KUafCp2yfrfulQ+OEUmUmkGdMhOloFsB4rFPwrpWJbsl7nS+Co9qY8ERptT003YQ
	81VDRvC5QfjkNakBQ6x33uAMCXBnzwy8oQzW+dp4YnDOOqFLrlFYdCDQNK4p3wpLEPXvVMDDYgKWM
	s5FGSdmQLYochE2SRDSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZEk7-00CtGr-Rj; Tue, 29 Mar 2022 16:30:51 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZEjl-00Ct9T-Ny; Tue, 29 Mar 2022 16:30:30 +0000
Received: by mail-ed1-x52a.google.com with SMTP id w25so21306839edi.11;
 Tue, 29 Mar 2022 09:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/Kco4hdx++fwSJlbz2TB/+gfQh17jeATDzy4+YsiSt8=;
 b=UdkkfW4XqhJOS8m7elAIsHReW+6pb7j+kGvkfAdg53OMsDh0jXcEP+6wQFsKBP83ns
 b69NUdZBo+el18As+qDJ30WmgDQhV4Lbr0MjtaBnWXxNEvIfJGxxN/7GRCqed5yf3vbB
 H1kS1fFUdiJ8JInS2A+E9reqWNnd8m7FwtRc6qwiitXAa2CJx+YF9+WyczRRXqENjlt1
 0EXO5WAxmKm3Su7HZPX2fyNafJ9Eg49vZtVimv9HRMLrYJu6RKso/1W58RNFfVdzVqMb
 bgZKFcIAwt1/Ck581kUrwUPmTyOBKvlWcJkT+OCkVQIT3v949njQloPs8nvkW5J7KEiy
 zePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/Kco4hdx++fwSJlbz2TB/+gfQh17jeATDzy4+YsiSt8=;
 b=H0mepEfNE1AJbRv5jZTazW5a6ZeKYa3He3NzGiWevEly4SQv085aUkjd9qg/eRcVDp
 WQamyb2KPbSiiX3s2mVntb66Kf+YC5wB0t/y4Xm3WDrm7s4AXMOgYrYilAucCQIid/BN
 zJcaouEXxXwmTzpWuN2dkXrIN0GWDA8aSpJgI33kjSY+5I//PGDIJzBSybbkXwJ8Dv5n
 62jFm3EUbslVfuSemzep0inqlzQGl2u9vYPmWXYgqZUkyFFhAZ2jvmAdp3NOLQ7cI313
 aFotSWSy+SsQozYQcPdLcTyIoMzdtvX1cEfQSqSwuetCBK3IMboSAT+PFunZ5yX1Ms0p
 ehKg==
X-Gm-Message-State: AOAM531uClgPJUB8Bc1pm+lD2R5pOBqZqg0g6xNb6z8/8pdCgUEF/++T
 D0UKwf25K2lbVcf3W8hqzkQ=
X-Google-Smtp-Source: ABdhPJyZ66JRA0HduKO18iYVGSXAq+jSnAguIvlWsoeEVYE1zGSMp2Zs+eP9zv2g8MyVs3viathGJg==
X-Received: by 2002:a05:6402:42c6:b0:419:276c:4a64 with SMTP id
 i6-20020a05640242c600b00419276c4a64mr5543580edc.119.1648571428244; 
 Tue, 29 Mar 2022 09:30:28 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 k26-20020a056402049a00b004197b0867e0sm8601179edv.42.2022.03.29.09.30.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 09:30:27 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] arm64: dts: rockchip: fix compatible string rk3328 cru
 node
Date: Tue, 29 Mar 2022 18:30:15 +0200
Message-Id: <20220329163016.27458-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329163016.27458-1-jbx6244@gmail.com>
References: <20220329163016.27458-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_093029_800768_7517ADFD 
X-CRM114-Status: GOOD (  11.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The rockchip,rk3328-cru.txt file was converted to YAML.
A DT test of the rk3328 cru node gives notifications regarding
the compatible string. Bring it in line with the binding by
removing some unused fall back strings.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc..73418fd2f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -756,7 +756,7 @@
 	};
 
 	cru: clock-controller@ff440000 {
-		compatible = "rockchip,rk3328-cru", "rockchip,cru", "syscon";
+		compatible = "rockchip,rk3328-cru";
 		reg = <0x0 0xff440000 0x0 0x1000>;
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
