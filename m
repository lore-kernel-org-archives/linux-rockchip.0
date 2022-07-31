Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 372C4C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyntLA+EphbF28DHfyPH6WRS+axiVJERZrHtQUhfDCw=; b=IRnHHqft6xHnJP
	scrb/HY2bdVaR56WzKhXMsF/D3RS9dShdFVfvHaM3psFPiSxDTXPVwPCs0sHlfgIpTItaWDtqMrDy
	9S6w8OxMvsin1j7YGTb3OGOGk9p2EopvHVNqbtZj003d8JQUWVO4IvfC4pJ+C40GwigdBfi4rlL/C
	mfbmrvqhRjnYguEIx3DN0e84Afdl2z1zoMc7HXS7XHeapVXmMNgjO3cVXqww1zimwx453wHZwtKWW
	/88EfU1LDavKfVRZYwIVkbq8Ksgv1lgvHASulC9nDqGnYhhb9/yGjccxj9D+mk91ulm+984S2SG8u
	Clce9fi91XKtD9YfAS0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIDBW-00Ej1x-BR; Sun, 31 Jul 2022 17:57:02 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3H-00EeNk-9w
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:33 +0000
Received: by mail-pj1-x1033.google.com with SMTP id h21-20020a17090aa89500b001f31a61b91dso10103611pjq.4
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=otihlVyMOIE7i28HZnhD6bsyK2Sm3/45NZiP/tjiYGM=;
        b=8Fx61NUMEIPENttfmwIKnlpwhaagVvum6juhFc2F//x7pEkjJGCQFkdwMT9RutDdqQ
         PeIYBTx5QNwpFw0AOc+g/kkP+QuTtCYU8QyI/b/y8TqFQWxS0I0Lz2Q7HYbYKsabNhWV
         YRgVjsNgFK1oxGOuxpgOPV/rbnEZ/volpFV5GK5xniPsnAS/rN6N7mO+D3BjArUJIRZA
         f6QURy3zanfQxfHcCoYQ7RRaFo7bThwnai9SFxB2IbzxpyN2yVz++dHlb9t7WUOAvNGd
         t/8DRlyNTT9LrdjbVjYXT+9mIPzQLv38PUsw98tWKV0oneXybd3wndscO3ZV6O5VhMSS
         njdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=otihlVyMOIE7i28HZnhD6bsyK2Sm3/45NZiP/tjiYGM=;
        b=Uek8Kv3jLqISOr/hwCS2GnR5Yj1phVhprYYdKJCLV6sto9cW6SRp3nltT20s+pR7F1
         rluwTd6vP0Zl7MMgJp9O3BGwYd7qFv++4mjHixbg+yjMuFiQy66IwBMc8kKFD1RwYCZV
         BAqjz629iB+7/HWwxkPrLyue/WklvswYu53HTUXuYSIb/NUvhlQj6PFAZM9OPjke0laT
         tTMch1YtCLiEwEWFJrKf1maTt7AHNzkr7TQvu6FtkByCpR5I4yIuH4RItled5njSU/R9
         rdvcFvEFSnw3qcEIM615wzDo7FlmRGCeZII2DFHpmmtnvoaX8431m9vykVkGxr2sFk+f
         kSJA==
X-Gm-Message-State: ACgBeo3S0p56e3kh19qUSEjo0Afa/PNQth56jaVk9+CwxhZfj3MR1qi0
	KRL/sZF7zRPm3YtZ5SjW4AyNMg==
X-Google-Smtp-Source: AA6agR4xYOAclGYpcXFuoTT5xLbvjqX6WTzvh9e6Wloi3HVCQjCPvfOBwqhk/aQ6SgiBi/LosYIPIg==
X-Received: by 2002:a17:90a:9b03:b0:1f1:85b2:c52b with SMTP id f3-20020a17090a9b0300b001f185b2c52bmr15890706pjp.159.1659289707926;
        Sun, 31 Jul 2022 10:48:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:27 -0700 (PDT)
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
Subject: [PATCH v2 13/20] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Date: Sun, 31 Jul 2022 23:17:19 +0530
Message-Id: <20220731174726.72631-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104831_410897_53529D36 
X-CRM114-Status: UNSURE (   9.11  )
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

Document compatible string for Rockchip RV1126 pmugrf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index dd7090d668f5..521fbcb8eeb9 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -46,6 +46,7 @@ properties:
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
+              - rockchip,rv1126-pmugrf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
