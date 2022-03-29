Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29967C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJaAyDMveWO3/LStYjdJxahcp7/8ibPMpijgaP5+yfg=; b=sk8D746ufAyBhn
	OhWgO5nxGLtR6z9mznhiiUn/eOMitomZszi4NgUHLrostfDPi5rBrQ8Gn40Za/1qmgn6S+kVrTP+D
	POOhsW7YUWja82EdZej5nsxiQZwQThLmUPqjVOOJDS3BjM7HEpYp17eYAaJDBG/H+n9BZ1ESONlCW
	+5DHpPBUivrcrCiMiqcJuP2SGkaJNDTtyJxG6evKxy+feRK24dK3Cja26Lfack/zPuZqxkoHeguAC
	tVk84+CtixLsMutP5uHNcZT2CcFEiY9KaYMu5F3uYXYIhKTxl7H6LJYCJBUaZkCPYpAaK9apMDpvv
	Ha4KdK8/VySsYsJfqPew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDSC-00CZxC-6G; Tue, 29 Mar 2022 15:08:16 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDRp-00CZmA-Cc; Tue, 29 Mar 2022 15:07:54 +0000
Received: by mail-ej1-x636.google.com with SMTP id o10so35819652ejd.1;
 Tue, 29 Mar 2022 08:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JZrjecTc6isxOln40Vu5kdPXZSuYev7N4LqkSkVuX50=;
 b=S1TTstVm4PiS0psirN8/kUMX2zgzB6DwE+2dneSeDqtD7awdbNoysKhZ4GOpg6otnd
 8m8SXbHJ090HjzoJ5eNg5hn3PkvxPmHkKNOmkusbHhr+L84Bp95S7sl/PTHa/6L5S7DN
 aZtbQVb8adDXcQsSeMpl8OIlZ4ybAL1Qh3yqA6nCf5/AmzYoikvKVPz4EcXr7rwryoWr
 EJL/pQFFW7aRMtIiC+8AvAzdGa1tanZv0h56i/C+XFJBsPoLtOUmekwb70Bkwp/QTFcO
 poNcczf7bw6t1PvoqnOgN7vSfI8LVcFV+xYlBs0wm8M02ggY+Ezrb6G/t2XYegW261zB
 mzzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JZrjecTc6isxOln40Vu5kdPXZSuYev7N4LqkSkVuX50=;
 b=xK/azm2cpT0Ig1bTJlonbRpMp4QkNkRjVIYs8iWDuA9D3LyxPOTpaJaJJK3SlCcHkv
 XIfqTOvCQGuEBpdog2erR5MIyXYQR1ZXgWCJCO9fvd98NhmqQ4ZK6XsWkmAbX8yinDLO
 w9rZY/FeyJFTX7VBPV3U+AUcYSIZNuG4XHSt1+1DlkJW48CdnhhvEGLolDmBvN2AFjsy
 6Sy0e4uDxVtk58uHbCCvEpy+bCTRgB8QUUFHDY/wW9byKrEOtjuw3CK0j0Hs6Io8yW6p
 1gQ51lfy9eKtpvie6e2IdebIp+aRLyKkkduwHxOEAiDwnLe2Bys3ywC5TrMB/qusEF4i
 fHAA==
X-Gm-Message-State: AOAM532XHAjmSHbD5R9n3frRsFyZXgXwq7aQ4FXR6T7CqccufJY7Fv0+
 9DkBsMOYNnVTHozmwqapcdc=
X-Google-Smtp-Source: ABdhPJxK9uAZPCoQxiBP6Nxy0F/7WLolO7THdSnb7f/FIeDNldRKMS9uPvGarmj6h7tQk7InG9ETUA==
X-Received: by 2002:a17:907:7204:b0:6df:6b63:cf49 with SMTP id
 dr4-20020a170907720400b006df6b63cf49mr34904315ejc.498.1648566471863; 
 Tue, 29 Mar 2022 08:07:51 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 eq7-20020a056402298700b00419d8d46a8asm3261643edb.39.2022.03.29.08.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 08:07:51 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] dt-bindings: clock: replace a maintainer for rockchip,
 rk3399-cru.yaml
Date: Tue, 29 Mar 2022 17:07:38 +0200
Message-Id: <20220329150742.22093-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329150742.22093-1-jbx6244@gmail.com>
References: <20220329150742.22093-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_080753_449543_0B7BF573 
X-CRM114-Status: GOOD (  11.20  )
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

With the rk3399 cru YAML conversion the original text author was
somehow added as a maintainer, but who's currently no longer involved
on the subject. Replace this position with the Rockchip clock maintainer
on her request.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
index 76dd24d49..3cc8398fd 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Rockchip RK3399 Clock and Reset Unit
 
 maintainers:
-  - Xing Zheng <zhengxing@rock-chips.com>
+  - Elaine Zhang <zhangqing@rock-chips.com>
   - Heiko Stuebner <heiko@sntech.de>
 
 description: |
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
