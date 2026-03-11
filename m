Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C9AF1125853
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 16:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJBi/i8wB8loYTtYxc8vT3LxmP53HqtR6JC93jVh2WM=; b=vMxggqn7NJ6kmB
	hu6WgewgcsCQ1g1tuioMkzfhYIGiCCKduePNq/QQvS8DpGMK5muPPsoeI/+mI268uuC7Z3luFICQo
	tQxdF+3MNmlujxhGbWcbDuUIG0LX3QAi6gVkP9hnHvDFZPS7wFDux6lxLaDor4kf24pBVlj8cdde+
	r9a9E3GMmkFEjsSy0SCKpskPfWPFq6T423C4thIaVxsDu75obMAJ1Nv41yvt5PZ/YIKvn0CkMT4dr
	OrUCcpkd0sV7iKcEezyFJDErXMOMGGFk/LN6MOM2ZldMB1QWdfgZW1/X2iCunAByJtZ5LyE7ztuPS
	iwCETSsoPjO70MUUj0kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0MIx-0000000BuXF-4A7T;
	Wed, 11 Mar 2026 16:21:04 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0MIv-0000000BuUY-2Gxk
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 16:21:02 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-439d8dc4ae4so57611f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 09:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773246060; x=1773850860; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n7BFBm0ORq4+JJOt2QbOg12ZPSD3QFxst8CC7tIRj8k=;
        b=Vuv3GlsNwJJIlLn6uYChJJ+/VKyDTOITxbxQRL2YJh7NCFvxjromx6tuwxI5i9oJAC
         0Nq0sg4MYufsDmQWrnGm7FrLHMyqZHZPP8PAYJHwkCkbcgDxvaj3uBQ8HPuxOOzdYDp+
         LqD/AZZhGnUS7XvppxaVzOjTt7yUWkjArYNpYVghs+CRWhLauDYhvZLZUXgVLYr58CbF
         Ybc0dwcOaG0M4clZAwZTIggUOkP6pM23+h3HeI2Ts3chz9G7+E3mUYTZicJtV79+AilC
         rPH1lOOVm5X0jyOd/QnAppwws3uUb3yGJSGPynv8rRID4qmIuJ5XRGOisM2/hzULaUjm
         Yr7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246060; x=1773850860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n7BFBm0ORq4+JJOt2QbOg12ZPSD3QFxst8CC7tIRj8k=;
        b=R9Z5iZsVa9ydK4PPa1mEKYzXI7O78L4csRtm7DYomQQqsMQgAWFW5EvNMP+RMwKAOx
         1kOrHYR8dzLkPqe2AZwdap5+J2TUnDDJLGNJvIi/O8t0LnVANRg6ex4BVmB/va+QbpeP
         KK2gPUclcnT1J82OVVkY+RxpKItzHHRp2IIlQ7seM3Vwj/Cs+5C0tkLPRQ4+DIuO4+wh
         jwjV6DH7SjT5X///ZOxyP13LvTWYMN7NBVMM6cjpeffU52k+8/7xgHL1ajbzYfNIhFgF
         0H8WpzAKUNJI0rAVctoJaRxnDnQ/Za8VIsgl7uqdkIWhHgGy82nyHhT0FjfV9L3Mo7c8
         EN3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWJ6cf5djtNpdg10FO8DnU8AZSUtO8KDcoicofef+PRPK+SA4L15jCCzbbEPYK4oZHPS+VOpZjMH3DSv4nV1A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2JyZ5zwoufuiswkyX8WzsbRuGTQq7XABESpQxnt5i3uLfLD6v
	+nSKczIhAvFEwvC5VX6B2c/b9x8+OA72xnRWndaH8nBP5M6jhQKmAz3S+tqSs1DD2iQ=
X-Gm-Gg: ATEYQzyg6m1OscG1WJ2LsqdPhJQ0mZwXjRexJ5OoOGjiOvqEOQmXqjiN7p0fdvxw656
	m6OEYEy5YSBKmEo+TaVKpuRa2jOKNKQmcc21YhhvvDUMq0jpojuga/0Ij38J1nBCM+0lZFChMBU
	45n9DpOnq0YfAVLJ8f5au8knTStHolU++pvhs0pSP1yzlE0pFmRzEJXohvl70ub0g6Ubm/AhkQj
	Lf/O1s2FAtZ38hXksEs2itPr77GXIbwR277rDwV7ebvYCohvFckotNtaXGVWA5NBbb5XL8DTfLa
	EjiHaRsITdYuDuKHtivKI3S+xCUwLIrkGHjtB8MxwYtDezoFszgHyv/U/KdmhmkflPDwAXHbJFZ
	GfddGE8v2Eqn9DJBkvq/h+eOhGsRT7u416C4bj1IN+zwZWooZ8v0So/LYLl4nyR51KT38F5Xki4
	QoCfCvFPs9pspp3xUVUZWbhfi1tIe3R/zXAnfeQZCLFUlYKAD/wOlzMg8WqJUsxTMFdBhFwQF0p
	jNE7A==
X-Received: by 2002:a05:6000:4312:b0:439:c1b7:890d with SMTP id ffacd0b85a97d-439f8219facmr6362482f8f.26.1773246059591;
        Wed, 11 Mar 2026 09:20:59 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b899sm283952f8f.23.2026.03.11.09.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:20:59 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 20:20:45 +0400
Subject: [PATCH 2/4] dt-bindings: usb: richtek,rt1711h: Add Hynetek HUSB311
MIME-Version: 1.0
Message-Id: <20260311-husb311-v1-2-f25bcb58cff7@flipper.net>
References: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
In-Reply-To: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1200; i=alchark@flipper.net;
 h=from:subject:message-id; bh=bMf9TRmYtn46zMSSe2mzXvRDTFA7QHx3kPDHNmgVLZU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRunJbcc2jLT4V9ix4K200se7ToyfSMgN7pC59fnRV6j
 tVEp5drQsdEFgYxLgZLMUWWud+W2E414pu1y8PjK8wcViaQIdIiDQxAwMLAl5uYV2qkY6Rnqm2o
 Z2ioY6xjxMDFKQBXbcvwP/zaNvclqs9M5l+x+LTT/OzkBxrf6u8Z7341Y+cZ77S5K/8zMsxIy/j
 1mfvvhL+MrE8V/04w/nD/w+9XJl0WR/N4Hyvf28cPAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_092101_620236_A515B6BD 
X-CRM114-Status: UNSURE (   7.74  )
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

HUSB311 is a pin-compatible and register-compatible drop-in replacement
for RT1711H, so add its compatible string to the existing binding.

Link: https://www.hynetek.com/uploadfiles/site/219/news/0863c0c7-f535-4f09-bacd-0440d2c21088.pdf
Link: https://dl.xkwy2018.com/downloads/RK3588S/03_Product%20Line%20Branch_Tablet/02_Key%20Device%20Specifications/HUSB311%20introduction%2020210526.pdf
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
index ae611f7e57ca..b24502bc8213 100644
--- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
+++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
@@ -21,8 +21,10 @@ properties:
     enum:
       - richtek,rt1711h
       - richtek,rt1715
+      - hynetek,husb311
     description:
       RT1711H support PD20, RT1715 support PD30 except Fast Role Swap.
+      HUSB311 is a rebrand of RT1711H which is pin and register compatible.
 
   reg:
     maxItems: 1

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
