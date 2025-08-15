Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9216CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Aug 2025 13:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pS2pI0kiD2rQwfbKqvz5c5oEhNQpzHhvdGuS1fag7Jw=; b=nUe19xBWlzTYJj
	gtUWbVZMJfKEJrIwt4iSu3jYVld6R6I4+ZsNaLPafHhRYHiN5E+MaT2ttAmBOOzasrtuawZiW5GFf
	YOyDk8FiWemblFOPrRCnmM/ZyFEa6/tU+6rOtUh78OACGZmbqeymCrTV46mdtLarSyVYOQkQ7tDQP
	68opy5MnmKMmQpXUYxDpEn/fbkgTSZDMEkjjvDjWkHp7ct8XUGxEevhiFZaSYcsqMk4uocR6ns53R
	uRTWnPBmCAzDYrRlcVxgDyWZfUvlxbBMyhYoILr6/DUJEFSrgBVqDOdAuXAesTht8OSr6YzKL4YUI
	p4USb4FdsUd6bHX0ImuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umuPQ-00000002a2Q-1VFT;
	Fri, 15 Aug 2025 13:23:52 +0000
Received: from out-183.mta1.migadu.com ([95.215.58.183])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umryv-00000002FbX-2D8Q
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Aug 2025 10:48:23 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1755254898;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PJd4mKAX6RdUpjrrwmUXazuqsCN2PZfrowEzcn0Hg5M=;
	b=GRcUo7e8ncadhrPZPmqSKbQBPcnbagqMUaNukDVPLohMx/EgcWoP+S1SAmrw3ZH7wJlwxq
	/x7+9s/aIOlalGm/ZFhCDNbV/I4dHZzxxE4uz0NKFjotzvv/6iGtkSA3wuav+M5Ssf6z5G
	rcJY7MdOL6jbSRN5BW9CwquNsFPaZwc1mFLsumV/xOLzglLjTa5RGJyo/jKy3e6ptyinG5
	eDJe31rFJ2ev/mjNnNs46LBrjXH+/s6uw1yRaztJZUG4ukNK9LzNJN9FV+qe8FrvAPorRC
	tV71LF7msadNyAmRpiXbdDN/l0tsS/KQVzhSwQ9ktUjimUir8J+Ki/Ykm3DCCw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] dt-bindings: leds: Clearly mark label property as deprecated
Date: Fri, 15 Aug 2025 12:47:46 +0200
Message-ID: <20250815104805.405009-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_034822_195195_63495AD1 
X-CRM114-Status: UNSURE (   5.98  )
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

The text description already mentioned the label property was
deprecated, but using the 'deprecated' property makes is clearer and
more explicit.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 Documentation/devicetree/bindings/leds/common.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 3e8319e44339..45ce9e13c7ff 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -58,6 +58,7 @@ properties:
       no other LED class device can be assigned the same label. This property is
       deprecated - use 'function' and 'color' properties instead.
       function-enumerator has no effect when this property is present.
+    deprecated: true
 
   default-state:
     description:
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
