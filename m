Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBDA606A327
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 15:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QtL3rlLq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=yObueSAa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qSea4LWgd491ouv8lHf9uuPl4/xfoXUF0E3vXKnyLNw=; b=QtL3rlLqheCVhMTqR4Ei7yq/Zw
	BUVAGPIpJwrlTse+v1poLkyt+vMyXu/+CX0XmiBad4bknUEpMaMRvP3xh7oNWah32tl2lfNgWnSv6
	5hiPwtasscnJ1faMslM+whagNgqu/VqMFzvK/K+GWoTZR0O9lhpYofIT4S4GUHbGpDAZnGdfd/zOs
	61P6ZIsdMRHoRdsrrpZULDX4AMlF4h7Wlx+/7Q9p3jDbvALMNclshiZjD1o3qnKgnS3tnFm/KURB1
	ZAKxU9AeMxHLo4O+3LTWzMxFJp9GVIxrTrJomCWRk+KkWoF7kbZtS9/Umk7htlzNAVYgNO0N7gbV/
	XsqA9Qdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOGUK-00000002yZg-3WkZ;
	Tue, 03 Nov 2026 15:31:52 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOGUH-00000002yYc-1H1l
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 15:31:50 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-845f3fa7f38so1839976a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 07:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793719908; x=1794324708; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=px9zdgpwFS81LrmsDCxEPDim7SV/QUfj3I75ZxFvQQQ=;
        b=yObueSAaQ3x+hyVByvI41AdBuQiYglAg6VYppzNfiM9Tw1+00Dch91iq2WQ4z0+a9d
         /xs6VMymFzzWWHl9gh8gjqR9h1u+ElcpS+9ZPdBoAF6LJR0zLNHsLiB3Q55AZQrt0xYD
         fsgZaS7IHqT4cdAjpKGrZLobvIV20QOa1P2A1cc+VlKswtaa4MZ58RLIeJdKOe89mlFe
         72F7nuQTTzaGcxcXnUL1IV+/SUYVaxO4CpF8jbI3oS3q03Cv/NHFEZF+G3PK5YPzmMDl
         NyhRgg9vf1f1rDjVxLXipJX6qoY67mHTbLlsdhhS8UQxWxObNdfCSYqUCnIi66XYo+er
         DR/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793719908; x=1794324708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=px9zdgpwFS81LrmsDCxEPDim7SV/QUfj3I75ZxFvQQQ=;
        b=gLGBBiAk/hQQHKUoWlgdc9zc6444/upWshLXOvjPUFQ1CbKhgnxBkfVcuEItQuouPt
         PFd+dzAAiOCRA5Lc+xrJnYznt+PMrbVsbMjCxhcAvnaDGHnsjeN8aEkvSBit+FrC1bgW
         zKuFG+SDjVyMxHhuYujQsB71pPqmXRe5MsP12K00+sigcuvorqLFuWVnqDTqWOBnLD26
         F82FCgcZBkveoaaZRzjX/gIEJOhynWiR2vrw3uLK8p6AuS0ngeG+Upw9VszJFa9juNtu
         /f5M2O0+eCND4/yM1uJ1uKXwlg3yUw5qPnkEl+V1ZuReA6JCDWvdOFL1FCFvv/Hp23BS
         eQCQ==
X-Gm-Message-State: APuU4Z9iDZkrZfCSWEO1zW3C+zfqEGSl3vlC1pAihwKbRzPqidLKuMDj
	TstUvAs5peUtqTUXqWgihgfVvmL7Sye/dFGoyEcy1yMW254NMsM2HVAP3tV1P0mU
X-Gm-Gg: AYBFou16NslBwEAOocoH5a1VsBYY/QDc87jYUpwO1/Z1twE0F+IVIRiMJ0aOubK27ZC
	DzHClicrZbiSqI+pcJnES/sIcfbPQow54J4n7HSIeXLjW60WSu0BNyLLleJzJKWMHtCLgF8gk1H
	hxq2vSejZr/BvXhM6ZUtx1LnKIj/6Z3dc3qsoT8F9BvJ+G3HJJE6hRvABjMoqPxQ8qFl2qp8yDS
	ozwcAvdRKyzTv4FP9c6FRBLuNf2KQMTYZvE7ve05gMVdwQUMAfGmeGf9p+/T0dpV6tP0sYKyBo6
	Ny0aI4OiXpHWJvgcSnUVGfUDlC1KAMF+6dlH5IqQxh7v5IeFwq/i0+VfxhMejehaa65XyNZ2Nh2
	bWGENP4k4wkk4fISqaNkE4MizVMU+qNPYaGLdYcBAJHcVmDhKIRgbzvETSUBy57QuPY5lPg2lIf
	fY6E8lA+c7wk+nGHNKbe52wvpdNfRnuZdQPDJ1kCZZM4fAmIxlvQi22Q2Fcw9PaEXkN24f6QWcD
	hCumO/pHPV5ylV8Rw62xZRNvXuNPmJUTvP7EyV2j/0FD03mp8rIDxmnnCs+1NSfKYarGhWtgBre
	pZH8frfIZgOY6v7Ys/6rWFuhpcg1oE4CRvgpmpyhPYV89yxORxju
X-Received: by 2002:a05:6808:1a02:b0:4f9:6348:cd3b with SMTP id 5614622812f47-5640dd6a370mr8851018b6e.41.1793719908538;
        Tue, 03 Nov 2026 07:31:48 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fd95dc0sm11599188b6e.6.2026.11.03.07.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 07:31:48 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	diederik@cknow-tech.com,
	michael.riesch@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: timer: rockchip: Add rk3568 compatible
Date: Tue,  3 Nov 2026 09:31:43 -0600
Message-ID: <20261103153144.343764-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261103153144.343764-1-macroalpha82@gmail.com>
References: <20261103153144.343764-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_073149_343308_105160D7 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for Rockchip RK3568 timer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index 6d0eb0014eee..b245a3051d66 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -24,6 +24,7 @@ properties:
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
               - rockchip,rk3368-timer
+              - rockchip,rk3568-timer
               - rockchip,rk3576-timer
               - rockchip,rk3588-timer
               - rockchip,px30-timer
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
