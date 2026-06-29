Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA7CAC43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 20:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDRhope1nkvAGWaOYMYrGPtpaIZ3qjYzQ0UoO7NnNuc=; b=Hp7vYnKUiSg0Qk
	N/KaO+DZHsv0e6G0Cdpwp7XkwghxHBhFxSphV8nqUx4+H0PQ9+LQeAwr9Og2bcL4DYOv3qG3VkmwN
	Tu6JVQ0vDfVN+kiKMvKvthsj2CRMJUhf2/UUaLPf78P/hR+5hdEy5111/ctPHMMo05Yn6icBD6sTX
	LwTS5eNAbgJXS1wHdPnUzemnA2B2MBMq4nOjRB4NQSCnoZa5N/LkCzXBNghSDpHiH1ctKQIaEcO/v
	ERa3jQ4t8CyQKs+abwUP9MMqbld/hZ7GgTJVkjjkGRVZ0e3hZTErqAuEyu117MoHLsSP1dNl4AkLQ
	Y+Xzwb67Rv+OK4/Qxw1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weISA-0000000FQdP-1dwO;
	Mon, 29 Jun 2026 20:19:38 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weIS6-0000000FQbN-3YuS
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 20:19:37 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2c95a0c0aa2so26052535ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 13:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782764373; x=1783369173; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nZg/W7O3xMrPOVncSfqHtuO2PvBNacKXPKLTL7Ha6Q0=;
        b=aVwUy0q/g6JkmdalFhaNttbITIwUb0EwBjoEURF95B603WGOuaF26xE8Fp/hixu++6
         wrqYYP4Jb1mo9KRwLlhkGbD/XLyNkFi5A8vX+8BcG+3s9VslTGI/rd1+jqjax62TeQtd
         ZEA0x2/HaW7pGAub+ro+XZdOTVRoigSMS9vTJO2Tfpmi84XxKTv9nY9NrypTREaQirtd
         GDWQPc/lleVdQ1VRZDjVSdcE9ZME7Us5qr3naIvTiEn8oQjWigcRpWKDb6bVH0+uVLQx
         0qRdZlcT/mPd7tm6+VugB4Hf7G3gHVCQtloN2vKZZj099iKheJd1vhlC39J2G4j/bYap
         ys0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782764373; x=1783369173;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nZg/W7O3xMrPOVncSfqHtuO2PvBNacKXPKLTL7Ha6Q0=;
        b=iCQy206aHnTcqngVjc8/aQjm9KSgn4FhSUsQTlmBU4sYJb3bpCpsDgGh6uEpOEy3mi
         yG2l0cjOWkRvn/FRzVtf9g9cHtRiBW7cJ1x6L5Ok8AgJQrOCiaU/jTXh4Hem8DNuGLAF
         j6uJqmuPSOjIsxeC8sdunCKHfdJ1SU4RkbB98lO2t6F/SDs7mfIelN3HKzAX34ksWPve
         5V6kw5VIOU7b/nKFzVXbvlM2ctrIdlDhb32rdmBqhMEePD+m+QBUT5V7/aTEtp+PMD8j
         vnjZCgZ9UaMRO4FIO1icEZ+GBbZCfYsckztp1gIbW0la1A2d1DraeBF8P/h/cvtfpS4s
         P1EA==
X-Forwarded-Encrypted: i=1; AHgh+Rq6PvuFruSQDy8xW/HM59qbW83vJeiWpyAvzIwsvCD6GNoGCHGY9vH47sy92VBrzXWqfFejaLkiAG7bvHwqwA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxRATslm56EhPxzsh0Wo80iLxjVj6gtOOhk07pFY6RZ2OhqxPC0
	3ErIWnTp83iooKquJY2JvlxTl/pGMTNPu5qGNCxMuWwqAi9KjN7hWKPZHdSj2GOw8sVH2sw3z9b
	IfUP/blWMnw==
X-Gm-Gg: AfdE7cn6CeE1ZRp/Kjyeq0fcof5EjnmpJrDu2he7kDh1sqIQ+FK1PpHNYW6d6uHsH+0
	9/gNdH+iibAu7z6R0BqGFizSj8z12rxhkVF/MHPn/E82pCmssTQfbT8hmCZTlK9Yti9vdePQPbj
	qZRQ7oDuUW6FhjNNzsOFojBnV+KOnqcV0Ln7vumrzcFqeMT/VtTSvYCin96Z2KLt5fLvXvIlfjL
	yfF6Znhrh9K69OQ1Xb5PVbAkTkX4P4b0c+ZbwP2pq1xm/go9YhkfEAzUSjYjNSDHWspxdHGoUWX
	XeSP5cxqXlSLnc1jZSYsSiUmsoTQjGZLWKu362D1O90Q3Pv4sX6WUVCer3D7hDB3LOlNVkZpXjo
	ypSKGmNEKV3mQ7IV3X2NTviPFp6GvRs3OcL4+r8fQevos4SZLn+eEpDCWuTUbkNuj5TnER9xBcg
	0M1x/ttZ/8EQ==
X-Received: by 2002:a17:903:1c2:b0:2c9:e86e:aa0a with SMTP id d9443c01a7336-2ca2d3d202emr6219205ad.0.1782764373360;
        Mon, 29 Jun 2026 13:19:33 -0700 (PDT)
Received: from localhost ([71.212.202.210])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-2ca37c908e7sm102735ad.35.2026.06.29.13.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 13:19:32 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-omap@vger.kernel.org
In-Reply-To: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
References: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v3 0/3] dt-bindings: mfd: syscon: Tighten
 checks
Message-Id: <178276437217.1055800.1836973932721840283.b4-ty@b4>
Date: Mon, 29 Jun 2026 13:19:32 -0700
MIME-Version: 1.0
X-Mailer: b4 0.16-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_131934_899564_8BC5DF8B 
X-CRM114-Status: UNSURE (   8.54  )
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


On Mon, 08 Jun 2026 22:44:23 +0200, Krzysztof Kozlowski wrote:
> Changes in v3:
> - Drop patch #2:
>   dt-bindings: mfd: syscon: Drop unneeded case for syscon + simple-mfd
> - Bump dtschema requirement
> - Link to v2: https://patch.msgid.link/20260608-n-dt-bindings-simple-bus-syscon-v2-0-0203e6c249dc@oss.qualcomm.com
> 
> Changes in v2:
> 1. New patches #2 and #3
> 1. Add missing part of patch #1, thus not adding Rob's Ack.
> https://lore.kernel.org/all/20260531110404.12768-3-krzysztof.kozlowski@oss.qualcomm.com/
> 
> [...]

Applied, thanks!

[3/3] ARM: dts: ti: Add specific compatibles for SCM conf nodes
      commit: 68f994ec51e279e63c8fc40c1bfa8add4b708111

Best regards,
-- 
Kevin Hilman (TI) <khilman@baylibre.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
