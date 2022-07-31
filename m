Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EBD7C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWM8cknKgWkD4L1Zu51Gx5DAI0pKtx4xQK5cuMOWXJI=; b=uhkDOHWQp6BFye
	mAztCUNSOIBvnJ12iWsqQnVvn4LxYvECzhqbywCo4p+s5Hp/25/rrsVLqI4dxXMpr4d2NyGkKmh+1
	wcbUCokyL3zI/Jzhkhm7hmIoKo7+gB7cUk10BSuS5QeNdDecOqdAFvk4PNWuTkLu/X98+jYNPiAAS
	zpWD5gOZkj1xaBonBvG8Zd+g6sx2q0Cl7jPcEUcFMoSexqVmPRE8RAxA+O4fG4TIO8Ru2Tt8IrJix
	uS3DvrxLoHy/GsTKl53tSuuvnKYAx8vJVsqd7KCngD3+8iNTUfKFgLtcpOTIWrFnlkrAtiFZC4pY6
	0xaiuKvaUP7tDlYEkuaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID96-00Ehhp-J8; Sun, 31 Jul 2022 17:54:32 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3C-00EeM6-Jk
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:29 +0000
Received: by mail-pl1-x632.google.com with SMTP id t2so8582783ply.2
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=u0pyjBwuqBS9TDZMHPXHLjHSzS4xEdriE2/o2TnWxus=;
        b=cu6U6P2dmp4z1BneHZIj5EPWAkmPFmAt+6vt3ciYdtxGqQmP+Jxjtjx0WJ2evfe5vi
         hhbXXoMn9iBT4kenf6++MphnMDVm4/9FItLUNpDpn8GF+3VnO9kdpR/GBBD3vwcdonkI
         OoK0hrKG9SWbbYmiURZudoezhIhvRDGE6+dO09jobWBOPURqxcX3JyVsSspkUpiJR/mb
         MZqzBkj39Fq2Gla3WQBDH2q/Bx6YtQfwQ9Z6bpEK5ieolOgvGUs0EUIBSW2UAN1NADYy
         8O7Mdh3PML83MokTnxBbg9+df/4kduYSiLDxPog7e2VjhC51gj8EBGYbI1jwpEetkJLY
         ztxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=u0pyjBwuqBS9TDZMHPXHLjHSzS4xEdriE2/o2TnWxus=;
        b=ewXX22nGvneSXkDdrLH57Yi45uITvnCSIjZdRQYEW0W35f+UkqRdIRGqnZLpNxzZK3
         qpP4wElWAE5bj+2Qjp3e6tTzY3s0az2U5ahCYCXHxT0h+QNWbUin7c+QI7+elUrmg9Zd
         Wb3zLJFiQ6rqgEKArL9TLcKuK7FX9QiEc5K+qxRVWcPjuxpL6sE6g3qmoNIINsQi7vO4
         +AsJInc5aPme2Vt0u96WuJ2RErFkgcMFBnrW2vvu0qDkE3wWORRxkfBZR9A7K1uNroKK
         BbUHdn9w2KWypp1dLGIWLUbz7BUK9YbMDVgjcZbpHjtRXTOA6P/9xtODlA6wJSpIAy7o
         NdOw==
X-Gm-Message-State: ACgBeo22TmW/kRDR6Bb+at6C/aoKDGUEB3TsaEF7zbAJAlrBRWv59cbi
	iR0tQ+R1DWnXOqXClbEbaTCjjg==
X-Google-Smtp-Source: AA6agR4mRQp8QxmNCh/081MmHMm13DvQIyxYRcWAxiYR7FC3nFZBF9WTPWVG5qfNPecK6Kc9NHpOPQ==
X-Received: by 2002:a17:90b:3849:b0:1f4:89bb:14dc with SMTP id nl9-20020a17090b384900b001f489bb14dcmr11140650pjb.144.1659289703961;
        Sun, 31 Jul 2022 10:48:23 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:23 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 12/20] dt-bindings: soc: rockchip: Document RV1126 grf
Date: Sun, 31 Jul 2022 23:17:18 +0530
Message-Id: <20220731174726.72631-13-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104826_729960_8E8994CE 
X-CRM114-Status: UNSURE (   9.29  )
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

Document compatible string for Rockchip RV1126 grf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 75a2b8bb25fb..dd7090d668f5 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -45,6 +45,7 @@ properties:
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
+              - rockchip,rv1126-grf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
