Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E24606A324
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 15:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=olx1/1LS;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vuTjd/9s
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=29PCWragHhMX298ffotLbxp48UNuhxLecFwxAJp5XZE=; b=olx1/1LSiQhpqbUg98AOZaSUhY
	MI79948mhs+u+9aVdK58x6b58oxVgHfxdOzG6k7n5ynkykuwywhcfLcrOlRSQKX0dRKgZq6Myy7vH
	amwSVmcpti54OqI7BBCylt37KRDOLPyt4xhkgK6PSdVxcb4rCEe74TYy3Hb1MIZ5xvrNWvNHUwV+H
	O2pCUSXZXfAdUbhwoyJ6J0RVsRVsRY5kT0ldNXWNTW53cIpFFBYbVLy7q1QFEeyNVc4FYWRc6wH0r
	SeZRtBHp+KVx28vpikxPcP0yJJCpnkvs2ZPLAorqMbV5w6jdkivbbqmDY+AnqU2xkF2177v37cnpp
	hQFbLteQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOGUK-00000002yZs-3tdS;
	Tue, 03 Nov 2026 15:31:52 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOGUH-00000002yYU-0Tcl
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 15:31:50 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-8479f46ecd8so1837589a34.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 07:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793719907; x=1794324707; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=CPNNCo+GFGu/9nal5nPw6bilsFuJkUchsPFZNI+iVXk=;
        b=vuTjd/9sm1jDbp0rBcJLztpxR+eQ8a0m96Dvd33hq7v2P5wPlkYGXFpteItnNRpT7V
         7rEhScTDQJKzwdPN39qgLf17N9lMEdXxLKgKCD0ZVKZFoFXn+jWyG2Q+wEk7sqWkN5+h
         iQ/3XEbULE2z5GF2EBk4b8uvi27GWnJ+qoou34jXIQF9sJ038l1Gv7pIKfoHr8gU8RhH
         YYQOReAHqypNEaC0NAZFlm6ksdV+CqJUF3mVH31kNY9pYcguVn6qMAT0BwoCgyZ0BZuE
         uD5nTIR464hwEEfpiQBoNGfd//ZXWNj6HV16IBlvZEIweefYcMYUvFMJCtwqHFuFucQE
         DClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793719908; x=1794324708;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CPNNCo+GFGu/9nal5nPw6bilsFuJkUchsPFZNI+iVXk=;
        b=iEJBXxY7Pvu1QmXph55mzXUfO6Nq7kKMMsGwyHkmMZB3+0OedtxHzCjYsWj7m6Xfrf
         zzFWAkZBvF6JveJRTIh3rnfNNredo1BqJ5Supsi4Y2pVOzJKly5nSczltCTHDoY03Ge2
         4GENlRIvT43rTeUu3EjISAe6H9aX5ekxWv3+AmLjYUqvrNZCnKbHaLOQ/LUbnuLGgo12
         LjC6LIyE0A7JxY91XXUGeNjNeu6/OL4/OXneXP5qSSBInfCsfmoxt/zFf+mwBmD1Qbdk
         K+Yv52Ji7WgCTdw0R6BkgPC9GjEv5gAEn+Xz8tacql/AkLXObRViMsYPVBFSBVVtyOOc
         8NGg==
X-Gm-Message-State: APuU4Z/u3jX9FiZtajbJpPlSPJuGkRqwSD0JMbHTzXZfs3GCsoGoZKtZ
	mFsJv8SvpdQQOWJTKS6frs6jNJsWOTO3tDJ2WLEAV7KieER0Bk1S+2WCnZm9EudO
X-Gm-Gg: AYBFou3UZztu6sWcmtz1zal3rSa1bCBwStnnysTuuHqmCFH7NdODQDpAMCRqBBEOQi9
	TTrKClIBxc8iseke+Gjgw1i4J/KxxkITWgI2ZRfhiVL8do2Zm2xUeLwMYdvJ5DZT+cDqcNTvxvZ
	Jl9njzF2Zb9hpk80xWiTdMAm4KDRVr/P2+d/63P28opCbsZoCHrMFoHzKOIHgzgfFcdE43UD2Pf
	oSvVcvTwZ8r52VKRj+krDDvnVuTdA1DT8apbg3pNxxSx3d3Kxe5py+pZeacixIol2Xva70tiffD
	c3wm3NHARpoyxTlIqLCDJf6efz/TsMukekpjzrt9ZKZgOs6fP61krGIq6TGo+ezCxARZ9uX6hiu
	IItYUSQqovsYosDFfUorNe+BItILXmEk4a0ParqZtq7paxOXsRGh09s6RZnKiFRNDXa4n28xVth
	NZnQlu9rkLaYkUtZOqAfIMTDKjTMMlIpPFeamENSK0p5pNw4LnJtGsny82e1o8mRXh+zw2igsNJ
	6PF+tov6RYvNLLkOUAYn9WL+V2jcmOTt4nawA/qhxeLsAzILauRhYD9bonSGJCM5XUYOkSlvm2l
	xKU8I9zJ8IGUWAqH+CZeUXsMSMkY/w==
X-Received: by 2002:a05:6808:2389:b0:4d3:6be7:c64a with SMTP id 5614622812f47-5640d62df3fmr8545899b6e.0.1793719907638;
        Tue, 03 Nov 2026 07:31:47 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fd95dc0sm11599188b6e.6.2026.11.03.07.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 07:31:46 -0800 (PST)
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
Subject: [PATCH 0/2] Add rockchip-timer for RK356X
Date: Tue,  3 Nov 2026 09:31:42 -0600
Message-ID: <20261103153144.343764-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_073149_154507_23638975 
X-CRM114-Status: UNSURE (   9.15  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add the rockchip-timer to the RK356x SoC. The timer for the RK356x is
register compatible with the rk3288. Address range taken from BSP
device tree and confirmed with rk3568 technical reference manual.

Chris Morgan (2):
  dt-bindings: timer: rockchip: Add rk3568 compatible
  arm64: dts: rockchip: Add timer node for rk356x

 .../devicetree/bindings/timer/rockchip,rk-timer.yaml      | 1 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi             | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
