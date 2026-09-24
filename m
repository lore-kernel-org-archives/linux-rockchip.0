Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02BBFC98310
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 07:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h9ht/Bqn7oBNUl/lYPeHIG5PG6cgzV55BdokwtEbYb0=; b=r7gKRKkppQlfwe
	n0aArhE957BT6G2AZ37J/rVuzc5Fl2S2yBb+2jWH+6xBM78Ezn00k8XybtSiQ1sHYpNJtD1l/xNEz
	/JRk7KQSINQGHnC0pTQNOCXMNB0VoZKRq7O9BgLB7AplVFHqjrEfnpWbDv37sv92G6gJqsRym44bb
	bD7Tv5TZkgLpaFJYlEFzctTy03uklMb5uoKuY0wKnvmgg1nPym7JlKupmFmDR0nTzFtWKRihQ8kyM
	fzrYxUWo7xKtYTfOjtAXga2Wb9hYo0iBNZDmtfcFvFoNaIbDrNcvsagVc+9JaEbGvPqLhzNFUJVvp
	K874PKYGLQmvqGS8ksSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dfT-0000000AFR0-2JB5;
	Thu, 24 Sep 2026 07:14:55 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dfQ-0000000AFPH-1any
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 07:14:54 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6aa8d04fcddso1223359a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 00:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wermuth-pl.20251104.gappssmtp.com; s=20251104; t=1790234090; x=1790838890; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=bU+4t3FGIXSiYOJEMQu/Cnc9Vdhxqo1btIx27NvDSa0=;
        b=l44lwK19+/q9g24N3ECV9Ku5QWu+qL5jtzFlIasT5ThClJUuf66HPHA3WRL4CJ2X3K
         o7IhE+M7zFp8T8EzEwi0OgVJsBajH0U8Tc1dJlHEWmbY9TS2MPFsn30vDsmhgV95XRFU
         Ah4xDQW5wIhQpwdiM9JwnqJUqS7iqLZm7ZLpOz8NJxhKnBtyi1OcDJdoFeekUFgma3mD
         Rl4QAq6ZLouNxy1swFdJQkxthHytLM+rUpft0YM8uRx6BggBjAZBtmmEWzWTqHeBp9GZ
         NAa6snXSRfMcwgyXqPBQcDyhUXQ2hbBvqH4JFucNdhqYMK4rytFTYrt6Me0TMnQO/hzP
         d1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790234090; x=1790838890;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bU+4t3FGIXSiYOJEMQu/Cnc9Vdhxqo1btIx27NvDSa0=;
        b=Md+x/zbgRl4ioMOPeBNEoXk6WHG/4p9FBxiBssPX3lBwjsr4bNfo1sa1hW0HHr8REM
         Y5LIc+YIZJY/z6ZGCEDQu+hBSHE/tr0ke3KW2ovFjFllYLCML5bKcoDnD/+F7evNr9tX
         doKpR6uJH0kBhFiISJNQlcZ+gH7ENCfaQZqb3bn2AkAzIlYHejuIrMgXrJjt2nWaeNPZ
         EU0oAD1MCYuVnyYkQxWaA1KwOjRjkOgzcSrl1r2/W8qofo54hbu3LVkkFiqvHAfGPShp
         4thlYoufkjuA2KX5cNn+dxf3hW7OPQ4I02fk7844G+8zEjfW64bswT917Jw/dqzc/sGY
         LArw==
X-Forwarded-Encrypted: i=1; AKwUvBxvhjADh6Qu6vqitBnxn7qCOwOC4BbGA9MtR3kCLy5B3DUpSdV09rNLkPoCZgqsKBKBkDP1hVWotBgVxH49Fg==@lists.infradead.org
X-Gm-Message-State: AFuF++kFqjhr3jUHLkcBXIaB02BRXNHMa78JnbPynAkAiIHDKUz/TSQn
	2wkrUxCiOUbbXhrynwYXS/KajNf7XaRNGIGm2tdIjQgrqR8KysY1eUKC78vrQCi56LQ=
X-Gm-Gg: AYBFou2GAuPGzKKEI0sjHNKWb5YF8Nj4itEiJci/OT/TRfAFsvnXUHO6GA/LHEqn/FH
	GpVyvr+LDzpgpxjChlhdzRFJa5XMOVTLX3+vGAIo2Kw8QoKjc3qDtLRqtov21m/og5Hncz9OWAo
	vB/QtZZbTzhPWWgsnEfsxZAmwf7PjzkvKcg9Y5cq594sv+3p0gvhFdIpuVETtT6Dh8dcZDuDaw0
	qMwKDLLWaKWPwh5B/xDF4LCHeKfxsyOElSF3Yprn2UpvTFTa1foZ/gw3SjZ2UQ0kqGATn1MwkUK
	95uq2678S6zAKyUzU1ADlRncfrpuYJ7id1yHcCAhL7oDnH3hA2ENX3+1gx81wd4rNUUG15rcabG
	jW/dPOxEI0NN9PffWxGQEofmz3y0h1hnryUpRtNYpVdRPrtMUVM0Bp8LmfkSj1R68n0GxCH60Wx
	d9hZtdbIaKFH7SUCHFQmsI4Z85pFT2e8OlR+O2QQVe20orAJ7FuKBdJ7nS7Dibbr/37pT/zvi5I
	Kzt9pf7UbsFPlPJN6HbwHTbneMBpHH7igQsN1pGgs9N4XA=
X-Received: by 2002:aa7:d712:0:b0:6a6:b2b9:7660 with SMTP id 4fb4d7f45d1cf-6aac8f86d0dmr907853a12.13.1790234089543;
        Thu, 24 Sep 2026 00:14:49 -0700 (PDT)
Received: from janlin-02.home.wermuth.pl (109-206-198-27.host.skynet.net.pl. [109.206.198.27])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aab38a9756sm3306589a12.25.2026.09.24.00.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 00:14:49 -0700 (PDT)
From: Adam Wermuth <adam@wermuth.pl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Adam Wermuth <adam@wermuth.pl>
Subject: [PATCH 0/3] Subject: [PATCH 0/3] arm64: dts: rockchip: Enable M.2 B-key slot and fan on Radxa ROCK 3B
Date: Thu, 24 Sep 2026 09:14:42 +0200
Message-ID: <20260924071445.441822-1-adam@wermuth.pl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_001452_645943_E901536C 
X-CRM114-Status: UNSURE (   9.26  )
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

The Radxa ROCK 3B has an M.2 B-key slot intended for 4G/5G modules and
a 2-pin fan header, neither of which is currently described in the
mainline device tree.

Patch 1 enables the second USB 2.0 host controller, which serves the
USB lines of the B-key slot. Patch 2 describes the power, reset and
W_DISABLE# controls of the slot. Patch 3 adds the PWM fan and ties it
to the CPU thermal zone.

Pin assignments were checked against the ROCK 3B V1.51 schematic.
Tested on a ROCK 3B with a SIMCom SIM7600G-H module and a 5V fan,
running Linux 6.12 (OpenWrt) with the same changes applied.

Adam Wermuth (3):
  arm64: dts: rockchip: Enable USB 2.0 host1 on Radxa ROCK 3B
  arm64: dts: rockchip: Enable M.2 B-key WWAN slot on Radxa ROCK 3B
  arm64: dts: rockchip: Add PWM fan to Radxa ROCK 3B

 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 102 ++++++++++++++++++
 1 file changed, 102 insertions(+)


base-commit: 23d8f49fcae5d72b77744c7f349c12462c3bb748
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
