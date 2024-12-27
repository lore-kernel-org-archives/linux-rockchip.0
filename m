Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BB28E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 13:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T56l3mSEE11BMQkfDoVr497AVkv/3S/aRZa1nB/a08Y=; b=aA9QrVmsa6T3lr
	OqOTfc/DUdNq+R+ZvAk36tSJcM7Ul9x0wzexDgu61WBAzZMK321pjhKfzSgWOosc5rgwC1ffdHWV4
	Qw0qYxzSUMfkQzSyw7cINpjqb2ZixMTfOvYwQR2b4n02nm3Dymx1DBWciQlwOiB92OvUnO6xLrLNZ
	NQPdsTu0XSjg/rSU8Q2Dn3/UvcuBfkXbyNg2O2/uPRRUJ9+K/9VKpL+JyEZXxeZEfLb12P495e/+X
	sGVpeneNnkbgXdbPAUPZMM00xmFQs/bi0wfX9OBM2XxPeBEvJ2CZ56ZaosOs/P/vk3r4bSPuQIePS
	biuKAvqQ7seAw5lrsWJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAU2-00000000Ihi-2vUt;
	Fri, 27 Dec 2024 13:34:30 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAU1-00000000Igu-0kTl
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 13:34:30 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2f43da61ba9so7453272a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2024 05:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306468; x=1735911268; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gbjXz8a2aEevt71JmvcBPYww5A/leuvh+vbR5ZRlWQM=;
        b=klJQzzUUybyzvhXFspoP6eGFpxfpku59+b4VioLcZANIg8kuSQOUjc1T5lQfpSlfI5
         AiPiy3jv3jPSKixcpbC1zwIrb2KC+BQcgoxd11/DLQRIm+/ecekqw0Xh/bTE2Bn4paFN
         GqOOWYmCMd3nDV9Mrm1aE7m2dWs6tP1eHgF3aQwbFPfPqzkxdKqlZCoDD/K2LVs+v0FZ
         iJe2Hb6zZVxzKP2wptfr0vOENbjididGxKW4ItohREa7ZVvhiiFbpqOfB0u7G249G3m2
         4wrw3hKePFirCxH6nmGjoqmugT/pMDedmyyHAgpCnOJ6W8e5ayOOAPKCu7jz8kJn0SNq
         2WTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306468; x=1735911268;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gbjXz8a2aEevt71JmvcBPYww5A/leuvh+vbR5ZRlWQM=;
        b=YZhPFnbQNcgsFwEAr8urQs/uS+DImzNA/6qkc1EpSo3w21sLHntVPHyIpXKc4gzhjC
         o8mjIIznH8aYJ7CE7HU6Fb7HGlzZ0Dsn2Fu13AjUYz20iZOYqIorXTVXIe4wvMVuK73N
         6C8N8XoKq+lizWlqiD7rT/XfNuJ/bTAPdPlt7BNBfYsces4DRJK9ZXAoU9563AzwW8e5
         VAA6pWoA8OkwysRCG0JWNi+TOCya11IzjF3Mqzk2p4eSL5ib+uqVibF3wFiomlfVyxJp
         Mrw3B0M4qiGH05nt1KhH4FP+alsLFZoQAdkDu3agfCbdICt5i3bPfSu3KVwJpqCs8MAH
         zxCA==
X-Forwarded-Encrypted: i=1; AJvYcCWMwrQg9WEEOo1Y30q90sKF7JTxYIe0XIRuMIjivOnjhyE5dVH/HEtPaj4+sbEhhvqrDrXvLFjN7XSjqeLpRA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzk1PtwGKrFBNtFLMmqwwjgUj1rwbP8PcNTgipjHthE8aVJYYfi
	pZMz5+4VPSpBuKIo0OmurFCBieUlmPb+qpqmOPodtrpyD74e/2zOQAR80oCcf/E=
X-Gm-Gg: ASbGncu2l2rx4NZyopnxmD3IvE4a5GmpMQ06sFliUtkyhO9tef6IgS4z2iQhr4vD4LJ
	fo89lxYITqeuilsfQOOIvumAj4dnVEFqUWm0AUxdnfJWwVbEZmQsoJH+9DueL4W9nn2WlzohpWt
	By0IyeBsGVKZqli8OE6O+HdNFnFmA31mN/MXJXtcsMOS6wje1NtJ0K9OsAbtHiUeAZZDD2GOSmV
	E4PJrRdcmJdjO9zpKWpMjf0bV88Xjrss5ShtJZ3WNe3E5aov9ee9xZ8DNocnsX6Txy5ox8=
X-Google-Smtp-Source: AGHT+IEt7gViFQxiLT8qwFNX3IkYH9GYMt+Tf5HsK27rfbJpvt2pULbbxU8yBcFgcbRCDwUYnWnfew==
X-Received: by 2002:a17:90b:5487:b0:2ee:d433:7c50 with SMTP id 98e67ed59e1d1-2f452ec360cmr35336365a91.23.1735306468234;
        Fri, 27 Dec 2024 05:34:28 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4623dbfbfsm11808238a91.48.2024.12.27.05.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:34:27 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
Date: Fri, 27 Dec 2024 19:04:17 +0530
Message-Id: <20241227133420.169714-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_053429_218624_D00E8012 
X-CRM114-Status: GOOD (  11.53  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Um9ja2NoaXAgUkszNTg4TSBpcyB0aGUgYXV0b21vdGl2ZS1ncmFkZSB2ZXJzaW9uIG9mIFJLMzU4
OCBTb0MgYW5kCmlzIG9wZXJhdGVkIHdpdGjCoC00MCDCsEMgdG8gKzg1IMKwQyB0ZW1wYXJhdHVy
ZS4KCkFkZCByazM1ODhtIHNwZWNpZmljIGR0c2kgZm9yIGFkZGluZyByazM1ODhtIHNwZWNpZmlj
IG9wZXJhdGluZyBwb2ludHMKYW5kIG90aGVyIGNoYW5nZXMgdG8gYmUgYWRkIGluIGZ1dHVyZS4K
ClNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGVkZ2VibGUuYWk+Ci0tLQogYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhtLmR0c2kgfCA3ICsrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OG0uZHRzaQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4bS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODhtLmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4w
YmJlZWUzOTlhNjMKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OG0uZHRzaQpAQCAtMCwwICsxLDcgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiAoR1BMLTIuMCsgT1IgTUlUKQorLyoKKyAqIENvcHlyaWdodCAoYykgMjAyMiBSb2NrY2hp
cCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KKyAqCisgKi8KKworI2luY2x1ZGUgInJrMzU4OC1leHRy
YS5kdHNpIgotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
