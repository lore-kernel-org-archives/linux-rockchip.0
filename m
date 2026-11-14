Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57068606A32D
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 09:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zYiU38Zi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xQF4+ERx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wOuEd3SckLWflv2yBjvEEmyWa/pZxDHTVlwoy8rVDUc=; b=zYiU38ZiqoBZFTTegCprzsqX46
	SEccVmQ2RJC4ZWRG0E0K3wQJHd66fTAsAqw0kpdxABK++MSpyG60Sr8NtpVLJPDzwETIFtXcUQnkp
	FeOC3gUcsyjtTzYn3QPzsWj9KC2GOtC80zJCmg9LK3tN7ccEt/eqLbUCEgtfL8oDqSSdB3OPQG9BQ
	1/AF1ZoIYDX1P9IeZCXZB3cB79xkDhtz414ou57/9loEqU6Jwo9mFbop/59e69RvBPlSlpf2DgT6p
	5ciphSQowrAepWe+gY9tTv0kXjO6fE4VcHqEciIzfqKW4kHxUt97WbGGVwXs0XIbhXglXfdeLi4wZ
	HgF1qDww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSAJz-0000000Fh3l-2q8L;
	Sat, 14 Nov 2026 09:45:19 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSAJw-0000000Fh1t-0i18
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 09:45:17 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4a2153c8525so11185885e9.3
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 01:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794649514; x=1795254314; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=37e47cL8nK91UujMUai9IjESXvG2R6mAt8cHf2aHgUc=;
        b=xQF4+ERx16nd7hU19t6OwVCrRa2cIjjAiFeQ0cZv0CsszZbHR7lGWHgsPldbxOvS59
         X49rZ1VBTUVgHsQeid1TsUlCZW0Dlr95AFBp25U/f//4+lxbAYhkP9yY5o7dzv/4Y07M
         WnGjiHiiDqwHQKZDsleOidrO5juw1jzA16vNgzfweIqurCgTJgQmXXqrVLphqQZY7QgN
         fAVa5Rwa/nwIwVezeWCX1qy9W+XM6rTOxQvCg1u+6Hz5j9eXEUFvP+Ki0/hwba32hR37
         en3RbN1kLTuVomCi4KqenvYW5yQkcYQRUXsiNl2GoQiiZei9oeaMdGJz0IyW11tc4nge
         xhjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794649514; x=1795254314;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=37e47cL8nK91UujMUai9IjESXvG2R6mAt8cHf2aHgUc=;
        b=qLOBHsdvqAoEu/0/F2jYChlb2RZNi7VtIP1pJHBxEvOUzf+yFCY6Oo8PqWFegmuSR2
         +/8WYT+OvpmkA6+4Q5Wpz3Uuzcdn7OOjSWpKo37kVuwDh5aNC5IomT9BD6PW8qWOKHv6
         rr3kKk4v2X4SEnzOld054WSCM/wJzqzmWq1W7hi9ky2rc8ZRyG1rbfQLxNTBumBrknMR
         Pvgzd3s4TwVJdFlw9yehfKCMyL/i75QeIA1XFOCMZ2i/Z6r42W5457IFEgjnHrCTCSWn
         EHIvEwOkEBSJiJqtRKjmNG9JY2bXWnxg2oZnJ07ugRRkNATU4i/7YLYzCQWeo3cV+jmV
         P7NQ==
X-Forwarded-Encrypted: i=1; AL+hErFHheI57yH4XYU+UOJ6XmFhn5r4lGHE8P7fCkBhfGyLan2cXMVR7WZDJGmV4U1Bhx4YSBeJU36u0jAFmt3qTQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+eNGeW1q6+5ghMwY/x9t+6Dytq87kA0vDBUwhJUeBYok89mYSA
	laAX+CZ5Aqyo8EeqWTpwqSsBkXXeIa7UZ9pOQ4hd5SyjIkYDMTw49smW
X-Gm-Gg: AYBFou1eCIQRSu47GL87KYm7iGCk7fgC2uo9n1JI7shLK/FBu9WknfUSNZDXCG+r+xu
	4gFhtl4UxlFmPAXLczZ/bizCoGEjLM9b0HUhM6iwJ1aH/pPTKZm3q9PAeoHN7HIF9xLn9ndE8n4
	Vm7knJCRHvLC5Jmbu6JTHTdKUdIG/Vi4BS0U/40CXGn2CDR7CRBVWYOj+lTLVGqMbJi18+K49zc
	ovSuURcZKW7lvaqg2IcfBwSIK8OmGZ2zdDVQWB459Q7h6j9XGpwm7oUqXrdLzkAwsITJp0CL4MC
	rsMSGxrG9Hr8PwWrTqQ58pjLeAdK3+w61Z7JUHTTRrv+9XaKxp0FrcbYQVXAcZIGuG9Ng+EjgQg
	t/LFMZnjhKC5JADDtjv06N+Vg/mw+42shQRW60ycSDa09pnnzZDmLabmSngrzSGR/9edvC1cKpC
	0V6nXe0tBE52LyHF46L94qDbgW7oCaXVkF3DyqYaS/z89wFAAS7Icx40Kl7W1yubnvdKOBdyqex
	U4Uezu9qJ+pFllkDjL2QtmnHG/3E8ZFcU1jbqsgXRVrvWY+bG0+4N9omEXb8lgNe+q1gX3QS0B0
	2/yT0VL/8HIG5AZjDD2mWekWmkYPNa2csKTWv+ecZNYVDpODFuRcKWF7zJlHLaHHYN8g579sIGw
	=
X-Received: by 2002:a05:600c:4ecd:b0:4a1:e6a9:4086 with SMTP id 5b1f17b1804b1-4bb5599a73fmr120286225e9.0.1794649513834;
        Sat, 14 Nov 2026 01:45:13 -0800 (PST)
Received: from vlw-PC.. (static.18.103.245.188.clients.your-server.de. [188.245.103.18])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb5faf05f8sm45787065e9.10.2026.11.14.01.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 01:45:12 -0800 (PST)
From: Vladimir Bely <vlwwwwww@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: ulf.hansson@oss.qualcomm.com,
	ulfh@kernel.org,
	heiko@sntech.de,
	finley.xiao@rock-chips.com,
	shawn.lin@rock-chips.com,
	sebastian.reichel@collabora.com,
	leonard@lausen.nl,
	abel.vesa@oss.qualcomm.com,
	tomeu@tomeuvizoso.net,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v17 1/3] pmdomain: rockchip: switch off the subdomains of a regulator domain at probe
Date: Sat, 14 Nov 2026 12:45:00 +0300
Message-ID: <20261114094505.401228-1-vlwwwwww@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <733b921576828ca70a3f5048691400130f8a5dbc.1794615323.git.gahing@gahingwoo.com>
References: <cover.1794615323.git.gahing@gahingwoo.com> <733b921576828ca70a3f5048691400130f8a5dbc.1794615323.git.gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_014516_227814_E09B3178 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.4 (/)
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
X-Spam-Status: No, score=-7.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,FROM_LOCAL_NOVOWEL,HEADER_FROM_DIFFERENT_DOMAINS,
	HK_RANDOM_FROM,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sat, Nov 14, 2026 at 04:04:59PM +1300, Jiaxing Hu wrote:
> Mark a regulator domain and every domain below it as off when it is
> added, and once the subtree is complete, switch it off from the leaves
> up. If a subdomain fails to switch off, leave its parents on and warn.

I tested this patch on the board I reported the hang on, a FriendlyElec
NanoPi R76S (RK3576), and it fixes it.

What I ran: Armbian's 7.3.4 edge kernel (armbian/build main, which
carries v14 of the RK3576 NPU series, so PD_NPU already needs a
regulator there) plus this patch as armbian/build#11366 carries it.
The code is the same as this 1/3 (I compared the diff). I did not
test 2/3 and 3/3 of v17.

DT: the R76S DT with the NPU disabled, i.e. no domain-supply on pd_npu,
which is the case that hung. No regulator_ignore_unused, no
regulator-always-on. Serial console attached, warm reboots, PMU read
from the regmap debugfs about 42 s after the kernel started, after
regulator_late_cleanup() has turned vdd_npu_s0 off.

Without the patch (Armbian 7.3.3, same DT): hung on 3 of 4 boots; on
the boots that survived, NPUTOP, NPU0 and NPU1 were still powered and
not idled while genpd listed them off.

With the patch: 11 of 11 boots, no hang. "vdd_npu_s0: disabling" is
in the log on every boot, and every boot reads

               without     with this patch
  0x110 req    0x000013e0  0x000013fe
  0x214 pwr    0x0000003e  0x000001fe

so the three subdomains are idled and off before the rail goes away.
(Bit 9 of 0x214 is clear because the GPU is in use on this board.)

With the NPU enabled on the same kernel, rocket probes both cores and
an LLM runs on them, with identical output on two runs.

Tested-by: Vladimir Bely <vlwwwwww@gmail.com>

Thanks for the quick fix,
Vladimir

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
