Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C418CC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 18:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNrdJp9bdPnGDYNPKl4SOdqqOQypHZqDX5cXiFGgc3I=; b=x2j0oCMFgx9MFF
	zcGbetf3Nn3WZSgZr6A9rdHuH73CQzlw3MSFoJo7YJznJ+JFekfxTWU+n4Q4rCdZTZsr0D9RGB8mi
	qkJJavWOHdKJi1ZgGuW1muZKJBxRUoCLK/+DAsDA1iVYcHVBhb/yYCSU2mLcozJ79/v9XNZR7PsnV
	29IrG8mgX71oKaYJvtnbEL9ScpN53T+YhyMgAqaLuyUFrl8DUJKYKQdofbdBie7QJQPOFPCbysyT8
	2xdPeu+W/m40p7ROXJUqr96i0JK8LcXga/6ZNPOpX7qvwT7WAvVc7hH1xeUWdSUasdQWIC+/GMXOh
	cquJ6vFMriLF9YcKUZUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZGpB-00DGCP-SR; Tue, 29 Mar 2022 18:44:13 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZGoq-00DG5C-3r; Tue, 29 Mar 2022 18:43:53 +0000
Received: by mail-ed1-x531.google.com with SMTP id h1so21750802edj.1;
 Tue, 29 Mar 2022 11:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xBJkwvNeki5PfTqOsvfJ8a7WGcSaDHdZIXo5PFl9ZH4=;
 b=Fh+hp3c9C56wxdRXyU/NFIsIQjB5m67Zkizv52Y6yu4n8bg7nWzMMIg2fGM0Y4alnn
 KxbxZqTc9BYKE1IDQrQjujvTv/4adFFCrpFPT8oq6Ou9IqqiNs2u8aPQY6PhflBxrGnz
 0na83mlgrmzHeNCw6AaehTXklkDtbO9uAljp1XyRDJkRUa7e6rjC5wJi8PzE6DGVt72D
 zNpf9nq94iB7Ulmqbz1rn639u/YnVWavAj7wBxVd2SEt2UZkG5cj0xpB6apRnC5fhe22
 75SdMFI0NER9HpiZO0GXG9f6pKkdTHeIDapwWHEQ1OU+eD3fPxorrQ761X5M40La5j7P
 hsUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xBJkwvNeki5PfTqOsvfJ8a7WGcSaDHdZIXo5PFl9ZH4=;
 b=hmBC5E8J+f0ZDOXA3WbiftPBNoET0pRnrgCJ0c5j4/YpvEnAQccBrm5iDpa0a6yGYR
 KTqgbO7wn7VouTIFIpfUN8+6htr37MSAATOLKKEbSUcIlmF6h28M8I1l7Ukdq/psZALf
 9apCwrgsqaR5UnvdSUYvYQb7UxZqlsUKxYSIGqdHYxRcCu+NLMeI01eXzGZV1gfDYYaD
 mLCbg2hMscSZbFNIit16PFvc/I41S39nl6s8qUJUYPMpJtuRkjg5Y0G/NTiZ2v5EcUsY
 wQZct3Iiuhths1ByLz/Lso7aFdKKri+P9nqUEQhLUzWMMMf3lPjbcORprkPpeqgz93My
 txrg==
X-Gm-Message-State: AOAM5334HTZ/j9XudOn20sAagMjM81xO+ZvM+Gz9WIawaocPDEQicmg/
 I0yfwvh0T/It/GM3R3sin5c=
X-Google-Smtp-Source: ABdhPJyrlb3mvXOJgIqbuaQuQYalBaoCxOz4mvbsmiTDPBplEVYFMP3StxTyydNuVperBtbUNHBuhQ==
X-Received: by 2002:aa7:c748:0:b0:418:f0fb:83a1 with SMTP id
 c8-20020aa7c748000000b00418f0fb83a1mr6395176eds.350.1648579428630; 
 Tue, 29 Mar 2022 11:43:48 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 z12-20020a17090674cc00b006df9afdda91sm7138714ejl.185.2022.03.29.11.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 11:43:48 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: rockchip: add clocks property to cru node rk3308
Date: Tue, 29 Mar 2022 20:43:39 +0200
Message-Id: <20220329184339.1134-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329184339.1134-1-jbx6244@gmail.com>
References: <20220329184339.1134-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_114352_179036_6B9A4EDC 
X-CRM114-Status: GOOD (  11.87  )
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

Add clocks and clock-names to the rk3308 cru node, because
the device has to have at least one input clock.
Also in case someone wants to add properties that start with
assign-xxx to fix warnings like:
'clocks' is a dependency of 'assigned-clocks'
With the addition of new properties also sort the node properties
a little bit.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 1cbe21261..2dfa67f1c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -745,10 +745,11 @@
 	cru: clock-controller@ff500000 {
 		compatible = "rockchip,rk3308-cru";
 		reg = <0x0 0xff500000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
+		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-		rockchip,grf = <&grf>;
-
 		assigned-clocks = <&cru SCLK_RTC32K>;
 		assigned-clock-rates = <32768>;
 	};
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
