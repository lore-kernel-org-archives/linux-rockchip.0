Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91020C4741F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 21:55:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C10B206C3
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 21:55:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mZ8cNisG";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="pVGittCT"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C10B206C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cJ1tVzDn6BVdpEAN8XV9jUpbm0Y5/4JGIg6hPls3Fjk=; b=mZ8cNisGgAQGYI4GvJu2YqhAh
	NexO13c63jfXSrMj9XdVypJPie3HwhQVi+QYR6dV/E/ZFfVIsklpjreZ6ALaNzwTEr1rsHjagvOx9
	oVgvGtPdZggd5ij5bR92VEOD9JvkTW+cdk+cJrLj6LGxrEfiNFRobmjukaBoF/BjrNmIa4HiS2bvI
	bFkAyZm1zMjX0qt22v0ytqsVY/9lzqUDrgMKpMmAKbocndEnm8lKcYgRjrGgUliUCKEa0mLB/mZ+T
	Tw605CmFgp/F6d9DLB0097bAk1Ag42DQhqc26UNgm0HCEum0TVxGZkCwHjKYMW+weTWveAViU3P2R
	Y9R0g3RIw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLvgs-0007EO-5y; Fri, 25 Sep 2020 21:55:42 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLvgk-0007BT-2q; Fri, 25 Sep 2020 21:55:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id b19so3616709lji.11;
 Fri, 25 Sep 2020 14:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SeTL0c/7JNOZbHDDafGIj2Lq9RezRDqi3GjRLXy3MsM=;
 b=pVGittCTqyTKqdvnYw2YphLU++ysqA22ptlbtdIiK4INItNg77NscljoTBoNwuQF9G
 lq4iY831pPMXw1xmkRNDWa3VzqlQe9Q4x+HwoNYH8C2Q4rgVpA+pSXs9VGq8zrCsjZDe
 ds5Bd0uh20DgrUA7XfoKF+/Z4q3UstXzX+RD8c1rPxSd4E97oDiExrezqx4XZUUYqcAE
 g1+/xJHNi+MlZRO1wb+g2TKz350ARMIBcDM2cMsk9vqus0iFKA+vDmJ5tMQDWa9ekXv/
 kKI21HYapqXBDQVv46R3+M1H6L0+brO4XWTpVRhCYVqKtHEUEvYCZWGgXF0IQ3DdDmMO
 t4RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=SeTL0c/7JNOZbHDDafGIj2Lq9RezRDqi3GjRLXy3MsM=;
 b=p7Qd4NORQmJ24coe5OuYhZnBQ0LaBdNaRvshmt6Q4qh48/NI4IgQZ4dz5bRa8mypX6
 IqFC02cJMe3tgN67ZQdTys8ZWcIcqQKWCqtQ4G0pLkoa0Mbvm1zdWeg022rkk8bNDcJy
 lgSQmdAKCI1XtVEH08c8O18EP0kMSZ5w+qYj0FT7FdTSLTDglAyo9aMKLhQ9WE0W3ZmA
 cI1N4cXPNa+0us3aBoCCoaw9o7AwU12Td8UuqikIEI2Roji6cZkJsU7eYt4wa13D+mcA
 BtDjpYoNsUxWJUwotr2LTO1x+SIMC8EDM9ZlyICdznc/9fohnlKfrIRdHhNNshE7bRSk
 Jh/g==
X-Gm-Message-State: AOAM530B8WA0GXUjt7Jx/KbICDc6eY90bNg4UAof61TrFQ5R7xVOUzpL
 nm5j/l8KNv/WVlprFGLdbi0=
X-Google-Smtp-Source: ABdhPJx6ytnXJvCZhen05QP8JCFosKED8273RviYERaPsmA21OzhS4aeWsWvQ4UgzSKTTJs019juqg==
X-Received: by 2002:a05:651c:1188:: with SMTP id
 w8mr2131504ljo.344.1601070933023; 
 Fri, 25 Sep 2020 14:55:33 -0700 (PDT)
Received: from saturn.localdomain ([2a00:fd00:805f:db00:3926:b59a:e618:9f9c])
 by smtp.gmail.com with ESMTPSA id
 j8sm261277lfr.80.2020.09.25.14.55.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 14:55:32 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Heiko Stuebner <heiko@sntech.de>,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v1 1/2] drm/rockchip: fix build due to undefined
 drm_gem_cma_vm_ops
Date: Fri, 25 Sep 2020 23:55:23 +0200
Message-Id: <20200925215524.2899527-2-sam@ravnborg.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200925215524.2899527-1-sam@ravnborg.org>
References: <20200925215524.2899527-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_175534_161917_2EC02820 
X-CRM114-Status: GOOD (  13.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Sandy Huang <hjc@rock-chips.com>, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Q29tbWl0IDBkNTkwYWYzMTQwZCAoImRybS9yb2NrY2hpcDogQ29udmVydCB0byBkcm1fZ2VtX29i
amVjdF9mdW5jcyIpCmludHJvZHVjZWQgdGhlIGZvbGxvd2luZyBidWlsZCBlcnJvcjoKCnJvY2tj
aGlwX2RybV9nZW0uYzozMDQ6MTM6IGVycm9yOiDigJhkcm1fZ2VtX2NtYV92bV9vcHPigJkgdW5k
ZWNsYXJlZCBoZXJlCiAgMzA0IHwgIC52bV9vcHMgPSAmZHJtX2dlbV9jbWFfdm1fb3BzLAogICAg
ICB8ICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgogICAgICB8ICAgICAgICAgICAgIGRy
bV9nZW1fbW1hcF9vYmoKCkZpeGVkIGJ5IGFkZGluZyBtaXNzaW5nIGluY2x1ZGUgZmlsZS4KClNp
Z25lZC1vZmYtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KQ2M6IFRob21hcyBa
aW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2Nr
LWNoaXBzLmNvbT4KQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fZ2VtLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCmluZGV4IGJiMzU3ODQ2OWIwMy4u
NmRhMTVmYWYwMTkyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
Z2VtLmMKQEAgLTEwLDYgKzEwLDcgQEAKIAogI2luY2x1ZGUgPGRybS9kcm0uaD4KICNpbmNsdWRl
IDxkcm0vZHJtX2dlbS5oPgorI2luY2x1ZGUgPGRybS9kcm1fZ2VtX2NtYV9oZWxwZXIuaD4KICNp
bmNsdWRlIDxkcm0vZHJtX3ByaW1lLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV92bWFfbWFuYWdlci5o
PgogCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
