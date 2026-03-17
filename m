Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32C9EFED9EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 18:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgUKP+QS//zl6CW+4NCJN939YpaOhV013SyLV+23rgg=; b=gTUiOeZbiGUSZu
	dAJw9M6ewhLi/GFIwqwWcDQIwZqKm2OVvC9Bm8A4/e7PjnVr8rpdNM6DJ8vTAdgNGhjv0Bya3X+K6
	ZUWV4SQ3cp4CYZSQ0YuUmknh7PPpBYeUZQZXS2HpTR+kjmIa8ajcdxkaSOLcCnYYjsNGZigcZvIkw
	aPQL4uwUgKvdV8Gxbx+T4Fow4lR8DR8X+oF1fubzdwwLAaOa+FO1ztTVwUYHeAYmhJyLLenTEaIg2
	MjsnOYMjaxelS/KfjFrC3sALvQi+Ww6IQ5yrSFAK9rE7nJFXznra0+g8HKbhddNZs5PAc2p+ZLqOC
	MzAo3ekT22sXGh0B2drQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Yq9-00000007183-0SO9;
	Tue, 17 Mar 2026 18:08:25 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Yq3-0000000712C-2RBC
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 18:08:20 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-439b7c2788dso3743357f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Mar 2026 11:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773770898; x=1774375698; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=731Ga6b9jk+vDTqIbd2aR5h/exqq5f25J8gBUSvhBrw=;
        b=ZgZ/XVCBqBtxSss83z3vCbsjmWFmZ6Oxs6+qXIlVLnvSfBWWGsA7zows2EMtTZkf4D
         s6v2jLU/HDOeasAj0TUxY8g/A3Lh0ALN014l2InSJkiLVQpCJfMwPWqxp9gHXv3PPM28
         YTNgl+OF1eNjPYJJuBRMcWXOM4Pp1XwH/bNlf3NY3XeokhnTHzpeaPBnmXESZExsiZ9H
         ih68rzeYbWOEqq+1sZs5nM1cXUdAMWbScuaXrQxr3sClJuUqDMaHGJ9ilETWQTBK7+Jy
         YQ93GUP3LvvfdASr/71nKtB0sNuENzfQVjHURQGcoV6Tvyqrug0VoWMe32WXijAb7egA
         nAtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770898; x=1774375698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=731Ga6b9jk+vDTqIbd2aR5h/exqq5f25J8gBUSvhBrw=;
        b=ZRnXi4BpuC2ddXBIEv4YWgCzZp90C/KK8wxsKFi27/g2lzodmL7w14AtEJ3EuU6mO/
         6xBKR0RLNfBuzesjah+eW6yqZO5uwznD3LG4wx3NyflewjKL8NZIMjU+OBIIDrwUGFNc
         9Dzil+6y3oRZSDcLI/5HzFtDev3B3dDMsMqT2Br57DKKR2WvFAIxi7ZwFg+sI3JFIdNw
         8cV0kcSyRDVTpr/5+WqUuEMvZen+ie+cFEziBnLF5+wf2KpNJ8kS5cfoyVcUPo+vxf0o
         XirpvDnVcUdgyuXC3YVb0IcSIRFIjk123pNWpP6kYgoJiAfMNEgh5DKifgETeiYGYmni
         /FJQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6qCE81vSWUsrvu/ckqcKBaIpgRsMGJW2tWefzbzz7Ibib0uDxuXk31oN7u8i8LLuuELZk/bjBa5PnavpV2g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwP9BYWcIHKDOEptGCUXlpjrLwqyrZj8mwvIJojrXdwAuQ0J75b
	7pCr4jDm+1JbGuF6Ok35wz0wb6bFHsawWAPnMDyvzaXHnZw5T+Ah7NXeALv+8Mo/YOY=
X-Gm-Gg: ATEYQzzQSIh3/lLl8hIjviuOvC3jS62k1VF4ucVtI/nj2kTXfmKggyMj1DEEoGujwNc
	1bQ+qo2WOkqhGkaUYklkhhr2oz5ppTMPX4xpsm20884/ZXaojPKYfP/cPSfYlqWoumTipEaefdM
	IDwAGJ+fY09j/qQ1ZVFPNPgg4MnwxzzQh5MvN6bUL+43LgK2RREsv6Pm5k5F6zhmwxQdZrnIyv4
	eponymjb7mcYDxrZzKe/FDOyXECLLZG4htzI6AhBvRZDHDU9SuAIYrwbL8Lzq49eL++YHJM6bJS
	85AdZ6OLFgxQvtW0mcrL8DPpm9VWP2LhsM7jzAPTIQiNqZ0b7g8BbhB3An7nmvvfe/5If6z13Cj
	qitnkuII29lUxSyRsIoHW3hluAmvZUGjhjL02tp80hdjqU47pqu2G8ApCixj9/SILLzEj41FYmO
	Wsm38Ns4u0Zuupz/xeSlls2EGwceE2UKgpxdHFHBln6Fen+fA+4llnyyzvVvcHL52crbfZKsY+e
	yIMrQ==
X-Received: by 2002:a05:6000:4008:b0:439:d769:ec56 with SMTP id ffacd0b85a97d-43b5264e4bemr458317f8f.0.1773770897921;
        Tue, 17 Mar 2026 11:08:17 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184b8b9sm1436536f8f.1.2026.03.17.11.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:08:17 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 17 Mar 2026 22:08:00 +0400
Subject: [PATCH v2 3/5] dt-bindings: usb: richtek,rt1711h: Add Hynetek
 HUSB311
MIME-Version: 1.0
Message-Id: <20260317-husb311-v2-3-03c17c986abe@flipper.net>
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
In-Reply-To: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>, 
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1494; i=alchark@flipper.net;
 h=from:subject:message-id; bh=epfoYBJ5kMhEqlncsOICDIG4Pcj2iVFAfms6oCh1jN0=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTunNHmffKk5btH2plnp4uJynx2/ndxw7b1215POnEx9
 +DrzqspcR0TWRjEuBgsxRRZ5n5bYjvViG/WLg+PrzBzWJlAhkiLNDAAAQsDX25iXqmRjpGeqbah
 nqGhjrGOEQMXpwBMdaYJw//Yf0HnHzzy9WXnKZH0vuPgp/5X+do7deXsTyYPLzzenH6V4X/05/e
 TXzNb5SSHz7zzd/1exUQl/hU3hQwXnDcQLEw7u4QRAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_110819_668561_26DC9F0C 
X-CRM114-Status: UNSURE (   8.00  )
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
Link: https://www.richtek.com/assets/product_file/RT1711H/DS1711H-04.pdf
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
index 62169daddb4c..f818d07d39c6 100644
--- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
+++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
@@ -21,12 +21,17 @@ properties:
     oneOf:
       - const: richtek,rt1711h
       - const: richtek,rt1715
+      - items:
+          - enum:
+              - hynetek,husb311
+          - const: richtek,rt1711h
       - items:
           - enum:
               - etekmicro,et7304
           - const: richtek,rt1715
     description:
       RT1711H support PD20, ET7304 and RT1715 support PD30 except Fast Role Swap.
+      HUSB311 is a rebrand of RT1711H which is pin and register compatible.
 
   reg:
     maxItems: 1

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
