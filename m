Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13DB9C5516F
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 16:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1v5v7dfnV8r7icavXUVO6r1i6hohQnsIH1pBYgaBBMQ=; b=FJCBnSM4z0vMVs
	NBTPRUGhGq08fGUsPi73Sb3LIaRmYBX1bH+nmIbJg9onyFtW1fbstHNN6RdudwZEyawARzAMc677q
	EMG5eX3F+C/dVEd8NFuRNuhVH4W+ZqH2eCsqfrSL+Wp+Blsm4hCoMJkkiUgCLffmdnUeImozlxZDb
	Fc5te+w1tMYMaTVmjO6tXG13MdCJ2lNwJJHUDpE+A0HxQvmWFDxZ3Gp4A2Dcwty+rTGExMOoSvdoF
	1dmKreYPoju9e5YTFN8c2Vt/bXy+NXwXjzESlsxBAktPuDIdDmPuVNFQCo+z5728LqPqmNtHznBXn
	o/KkOvJZiLHWdZie7qtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpppb-0000000CxqP-2I8B;
	Fri, 31 Jul 2026 16:11:31 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpppY-0000000Cxp2-20AB
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jul 2026 16:11:29 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-c160875e029so13935566b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 31 Jul 2026 09:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785514286; x=1786119086; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wNXKFZWI3u+GyO4UBU10scwv+ImHf9jHPS32+l+/nu8=;
        b=tOeQw1/Fqi4989jI79/C67yT+2AKXQu0vaoRLs0ILpknGjzM3a94lZlA0hTTYz6tmO
         LEG63VW1yZNY8LMg00Rxv8YXPl/LEzUZQc279B1gy69+YWRUEpEoHSPc7I0a/331pO6D
         I1Lz+kLroKlMRNR7Fq6rDHAmPzC9mGve6izWG7PqtsZkhIUZ0gBEtzYqs878/U2Anff1
         7e3S5TP+WDH4+aqyIcPXCaun8Ou2KmIdsrZFMrReKGIFHixwkChu085+gt9PjjkR0yHs
         QTUsuhwRIRgN9UwfdnkaAN9s7wsdyP1qGN1mPsS3+0PcAPuRyPWsJPeP+ipKN5JPW/Gs
         pktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785514286; x=1786119086;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=wNXKFZWI3u+GyO4UBU10scwv+ImHf9jHPS32+l+/nu8=;
        b=r2hhYUH6BjRMBMbz2KTD2hEj6xuPNhE7lkvwJX1t1tcsmG7/ZGmiIWVdzc7RO8rQuI
         /8ZcmC/I0KfoWY+pk+eEvMhJhmUP3IQSo9E7xOVvMg55kHY1TWrUJbGkBVPsKAIFy2b1
         6LqWPPVY1qox1Le6eKMtF3ilpJC9Y383AOuEMtaj0jMS5kzcPGCYq44tH/kUUbBeZTXh
         +3g70Quzn+bniPoe1JiT77QgWZVEcEOXRdHRU6gO1mKCbw7Rqo3cCwaY2Ys31A3TGbrm
         BzTx4QFEtv/UrKgcnGLPARc1ddB8rvQgvYBCW+EXxt0YsnyVwFqkqK3Bw1lJO+u8xavC
         Qk8Q==
X-Forwarded-Encrypted: i=1; AHgh+Rp5R1hHuWiwfnm7V5MTDOP++p2oruLqcAQGXY/5JjhHvIU8adDq1V+MAh231TpJGEleZjTfdBaNlvls1Cs2bw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwPJfOQy5QvC6Y8nUSsWTIou1pqNjgCRXfPbD6qwrH9BKVjko/u
	z89G0Af0aw3V0UTM6gs/XtLKyrjSfGHKEFJ2VfFqzahkWpuT5ArdfKLS+N06lNM8
X-Gm-Gg: AR+sD13KJNDW210I6/ZDmdBtp3eO7lAmj4YRS+IaLlJmldRJWIu8o43nQBJ/Ix0fJkY
	zxMt1cywRcTl1KSJn/SwnwoGSQXiReRoSkVfcE+Fhgw8Waqe84v+RLKrWdZMYzmNGrSeYlE//eW
	eFeACmxK2nNX2oD1xYjcSTqdemaVKtKbG77ImNq74t/dYBI3oA1JON5zeho3URPndvuuvKw03vD
	ls/bZboy9hfmAc7DkukJxO3eBi6EMZH1RvxH5Yvg3nHzlSLuzeCkpfLi1jw5VAn175lyXy85zLd
	UddYmUPr4k9obQl2LJb0GMfxCU/j0piT9h6DbW6dRTpo2Lkl46OSHajBj9dk5D6Dlb3pjcyA0Lz
	rVaZjH3A4ixbcYVIzA92nYtjwGAEMPgxMOEjZ+jcedJeg0rqXqAigF8sL2oprU6R7otrv+H+BmP
	FY5ubugWYrrGVfC9KurFEB2MOwOLpyK5LWgyTBoi6Xu3I0wvDGpfZUeVwGFFVyxkG6YhMpXwrlT
	lJkCfcGsweTwxMIDnH38uxExi7YlkfY7uaENzkbRiup40GyMVsVZbLyslETHVgT3OgWrNKKO5eZ
	94w=
X-Received: by 2002:a17:907:9616:b0:c15:ccda:26d5 with SMTP id a640c23a62f3a-c1fe8257a96mr18955666b.4.1785514285948;
        Fri, 31 Jul 2026 09:11:25 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8B8B002291A327B8340D99.dsl.pool.telekom.hu. [2001:4c4e:1b8b:8b00:2291:a327:b834:d99])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd45a1abfsm5826173f8f.37.2026.07.31.09.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2026 09:11:25 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Oded Gabbay <ogabbay@kernel.org>,
	Alexey Charkov <alchark@flipper.net>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [RFC PATCH v3 4/6] accel/rocket: add RK3576 NPU (RKNN) support
Date: Fri, 31 Jul 2026 18:10:26 +0200
Message-ID: <20260731161026.22112-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260731043507.1832277-5-gahing@gahingwoo.com>
References: <20260731043507.1832277-5-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_091128_530836_0A9151F5 
X-CRM114-Status: GOOD (  12.90  )
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

Hi Jiaxing,

You mentioned you cannot exercise RK3588, so I ran this one on mine.

Tested on RK3588 (Orange Pi 5 Plus, all three rknn cores). Applied on a
v7.0-based Rockchip tree rather than next-20260730, so it went in with
small offsets in rocket_job.c, but the RK3588 paths it touches are
identical there.

What I checked:

- all three cores probe and report their version, runtime PM suspends
  and resumes them across a 60 s inference run;
- a MobileNetV1 run through the Teflon TFLite delegate is bit-identical
  to the stock driver - five output tensors hashed every iteration,
  4260 iterations, no mismatch;
- throughput measured back to back against the unpatched module in the
  same session: 70.99 vs 71.18 inf/s, i.e. no change. (Both are above
  my usual ~68 baseline because the firmware happened to be serving
  the 200 MHz request from a different clock path that session - it is
  unrelated to your patch, which is why I measured the stock module
  again straight afterwards rather than reporting the first number.)

Tested-by: Igor Paunovic <royalnet026@gmail.com>

I also went through the RK3588 side of the soc_data conversion, since
that is the part your board cannot tell you about. All seven soc->
users keep RK3588 on its old values: num_clks 4 and num_resets 2 match
the previous ARRAY_SIZE() results, and multi_power_domain and
poll_completion are both false, so both new branches are skipped. Worth
noting for anyone reading the diff quickly: growing clks[4] to clks[6]
is exactly why num_clks had to become explicit - leaving ARRAY_SIZE()
there would have made RK3588 ask for six clocks and fail probe. The
conversion looks right to me.

I am not commenting on the RK3576-specific parts - no hardware here for
that - and I have not tested 2/6 and 3/6, since those are built in and
would need a kernel rebuild.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
