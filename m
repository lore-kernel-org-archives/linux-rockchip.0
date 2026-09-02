Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B93AC61DD6
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 11:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nU+zUOEPleEdpwOAiPvQmkQN3lhR74eiysoG71O5hRw=; b=lwadBgk36IwY+z
	h4ZE8FPQE77g1mWNGBaWEjgAIpAPjNyexWCP7tVR8s9rShkH642RgbKEgWU3IDHD9SwyFrwFmc2RD
	sJDtb7YbUSQteDG0fkN3SJ22sPleZTFfV3tbfhJw/Zv3QAPyBs5t3eL/ne7TvQg8E/2PgH3ChEqwt
	9buo/FFqMB0w0NGEe6cegRoVc3KDig+N9yLxUKVYwbHR1SDNDM7JOL7KVaghAulD6S+biN7+8PnTf
	Kj9cilS2bX34ExQJrUAPc9xSEmqJHEZPsKYmcKcivDbRRkm6gXNTfITM2C5QXUbdJ8JQVde8/JSkj
	iC+4lPfDS79iaHj/faaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1im0-0000000ERKr-0qIg;
	Wed, 02 Sep 2026 11:04:56 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1ilw-0000000ERJR-42E6
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 11:04:54 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-499dd4900dfso825435e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 04:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788347091; x=1788951891; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GTGAL2LK49DXmb4kTFlr75XQjH/03+yuaF3FJpUhzoQ=;
        b=ABA0pqWW1ClAYzKsoAK3WAqLFcmsUMxpXrG1qtcF2MMo7BWZYmq65jUNXEBvNrQJqL
         xZpPiN9AcY6NIgs8pZ1KmZhYK8t8saIV6k6A2lU6rKviFTLYgSYUOV2ZrtJZ9Kdep+vZ
         baBwfbISxc9sMlPbxmlufD+kJItc7zuDOoeRj+Cg4A+G/c89X7gFk5WZ1H8vuxL3zKTq
         IB1qHaejA/jUSORNemuCxBhLbChsf/RmoqIRUQaNuYVA7xmrQKKpSs87IYDMI2Zj/2Px
         ut9HQ2P2rrQHUDn2FOupHkRn+4YNuT2oz2B0pXA9h0jreGVo8r8TVasDGqTagPRcSSwx
         0SQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788347091; x=1788951891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GTGAL2LK49DXmb4kTFlr75XQjH/03+yuaF3FJpUhzoQ=;
        b=IzdzOP/hWawXX7SRi+ZqEH6WP6z6+EjeNFXl5Z+b5gFs/lJj4k/LdNgzjP0q8ona8s
         2bVG1Y3KLT/RRf16Y3zr8ImvaJhBmj1neYpvl4Fm8WMC2WZVm1OGyiohl5s8g5ZA8MhU
         O1bGF0h/etibVdLELffqlrHgN3E89ksKVd0oIQo89tM9lZkLCpezrqffOukB0PSVv5OQ
         74ag/42trp1z0ixCf3FUGCKNg4rAfJUwILeiaHB+xr5G3rW5NOZxFOMdUSQ59Zgvoo4c
         o47l2U8+Aqt9LH/qBBbC7EyA9o4LlvRpf8gtwns1Jcq2SZPM5IwuWdzshW6fCArStsdn
         615g==
X-Forwarded-Encrypted: i=1; AHgh+Roby7dQ4kyLX55o//uDtd2i6d8RnAx+MlSLzdfzFtjE1QpKPsdK12LvCP3vleB7UMevghMA+Osoh8sIYy6gPw==@lists.infradead.org
X-Gm-Message-State: AFuF++nShpoRrsTRsSM6UDGo2VOiQEWHpACK3H/pCKfKka4NRBytuTxZ
	k00uJbbacr09HmA+K+Q2+HNg+vSdQO6QYISDV5QgI2AHdp1PCZqlrBb1
X-Gm-Gg: AR+sD12re0rD/Picj5BEL3wY1HEDYGNMxMSs00uxgBUYwVX3dH0UqbWYvJ9TLDse6+g
	IcwzP1kYs6iBKldShtuBwPMnyf4VSC8yd6sSUbq4XeS8dWGTxijUGmb57XhLkb4tYjhz0er+Exe
	6kpc5ll8HCKM2u7P9innfCmnC6IxnkaLTFR69BZrm/9/TvgBMK9P5ilf/jgJLoVOlcjJ4kIfAPr
	JlfGG+OFClwwBRHwB9L19TQP3AGYZlMsUDrl8OJ4mgVFY2Xf2+Ljfw4/yexa9G8choH4zhgg5pp
	L8delzHa6NSuN5KCIky7mzcEoOp9y498O3hOLpAOCP53pA3XYGYvLEbHjk0DBTrIRBjzhIq6gI7
	vUfazyIvCvfIqJxLcUQSsvQ13haRwCo93pBJassWUJK3s814BEm4iFewMhE8F2mbATBEj1jZLQZ
	HcDYHp6GKBQphWK/0SQjE+iM+QRqTqt00V+BUZjgBc6YEYkCuKQ3y0NdmlfQ8N27LG498m1yWuT
	S1LTMgU8Sd7TxeVp2kgZ/qhn5u0dTCHmLaPnpZo8HBb4GXS19XfYA2WJwmJXpBMFS1J2iusXrzh
	OnQ=
X-Received: by 2002:a05:600c:3b03:b0:49b:910c:76fb with SMTP id 5b1f17b1804b1-49ce58252e3mr32581935e9.2.1788347090765;
        Wed, 02 Sep 2026 04:04:50 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B831700C106E30F6C827C62.dsl.pool.telekom.hu. [2001:4c4e:1b83:1700:c106:e30f:6c82:7c62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce309e418sm83442895e9.13.2026.09.02.04.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 04:04:50 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Huseyin BIYIK <boogiepop@gmx.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Wed,  2 Sep 2026 13:04:27 +0200
Message-ID: <20260902110432.22069-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <f5241666-9657-4f49-958f-476fd366e408@gmx.com>
References: <20260801131656.58450-1-royalnet026@gmail.com> <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se> <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se> <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se> <20260819125932.5853-1-royalnet026@gmail.com> <82c8b17e-7215-45ea-84d1-9991ba6fb541@kwiboo.se> <20260819184807.6665-1-royalnet026@gmail.com> <f5241666-9657-4f49-958f-476fd366e408@gmx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_040453_023164_AFE6FCCE 
X-CRM114-Status: GOOD (  14.77  )
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

Hi Huseyin,

> No you can even read them from userspace with mmap. i think there
> is also a firewall configuration where you can restrict the access
> per ip core, but default configuration should not require any EL
> escalation.

You were right, and here is the number that proves it. On my daily
kernel, from plain userspace mmap, the GPU PVTPLL counter reads:

    GPU_GRF+0x18 (STATUS1) = 0x412 -> 1042 MHz measured,
    at the stock 1000 MHz PVTPLL operating point

so the written rate really is just nominal calibration, and the
actual ring runs 4.2% above it on this sample. One detail against
your note: on my board the live value shows up in STATUS1
(OSC_CNT_AVG), while STATUS0.OSC_CNT stays zero. Thank you for mmm
and for the TF-A pointer - both did exactly what you said.

The NPU counter is another story, and I can now bound it tightly.
With the ring alive and clocking the NPU at 1 GHz (CON74[0]=1,
CON0_L=0x103, length 12, CAL_CNT=24), NPU_GRF+0x24 stays zero from
both kernel ioremap and userspace mmap, after eliminating every
lever reachable from the non-secure side:

  - counter input select already xin_osc0_func (CON74[4]=1)
  - REF_CNT (+0x1c) tried both as found (0) and set to 0x18
  - every gate bit in CLKGATE_CON(27/28/29) opened, one register
    at a time and all together (27/28 were already fully ungated)
  - CON registers read and write fine throughout - only STATUS0/1
    stay zero

The GPU counter counts out of the box with its pvtm gates closed,
so none of the pvtm clocks are the reference. SkatterBencher's
rk3588-tools hit the same wall ("NPU PVTPLL is not working", with
the sel flip left unimplemented), so this seems to be a wall and
not my setup.

That leaves two candidates, and one of them is the firewall you
mentioned: either the NPU status words are restricted for
non-secure masters (per-ip-core firewall), or the counter is
simply not wired on the NPU instance. Have you ever seen a nonzero
NPU read on silicon, for example through your d2d6928641ba
get_rate path from EL3? My next step is to cherry-pick that commit
into my BL31: if EL3 also reads zero, the silicon answer wins.

Jonas: the GPU result above also answers the OSC counter offset
question from the pclk thread - GPU STATUS1 sits at GRF_GPU+0x18
and counts without any setup.

I added a GRF_NPU catalog entry to mmm while testing (start
0xFD5A200C, per the TF-A offsets). Happy to send it as a PR if
you want it despite the dead counter.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
