Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95D08C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 06:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gPVCcEvdTdHAY4YA402moeQmjgUtjHkOdifuGWwXPbo=; b=CfPkH+8Ys5UElg4X9qkoarqLFz
	0tNnRCbybx5WJr63f+9WfOWMrGYc6R+nQpGXtt0d1IrHpmdORUdMACjjBzf5DibWgHEIrMhk4HvbE
	4Wvz32QAzSUm4h/6PX+mRmt8kxMWNHFQ/880vL2zKAq0lJ4/PFC347XoFew1HHcIv4nYYvphO5O68
	qVabryFoCdBWjcX364e0TZYg8kN2YaMdq8UXqu6OO6KJmpB1yAyRFK9Rb71K7SgeylOns67/NUluf
	pxxp+xJCVAQPKGrxnKIWusCJBRMOEySVll5btZusI8alfGX8+wxiZc2mQd+ZnRSsDxgRHDh4mcjXA
	Fe+H87Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10QJ-007Onf-6f; Tue, 14 Jun 2022 06:53:11 +0000
Received: from mail-wr1-f54.google.com ([209.85.221.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o10Q4-007Oi5-RL; Tue, 14 Jun 2022 06:52:58 +0000
Received: by mail-wr1-f54.google.com with SMTP id w17so2347118wrg.7;
        Mon, 13 Jun 2022 23:52:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:references:in-reply-to
         :content-transfer-encoding;
        bh=/ySUZjTm8UjxEDAJw2fvJmORhrykqz7zuKh8kBwSEeU=;
        b=6SEbgk54cdpMKVMVQ4N5wiiCzdXRhK6XYS09cRIZivxYKpDGMU1uuRPHFO4hY9xcGr
         D0gtmuDqc2jsQWFJFVTovNP308f1SkOiVku9bDqeyiIpOn5+Piu3gf7vieuJytlPFtzS
         c11vhwHQ3kVRMGlEWZ64BrPYiPZHP6IZmfWEd7U0iAZ6aBCBqJhLzpX0jTTUAXb0coBN
         By2Z9picJN+Vhncmelkb1HLLwdfgXK4EbvMInyGwqqN9ailYxOTpEM2lhrDaRRGvg0tQ
         zt54i5OaekA26tandk0Gtkg82AiRukKSOM0aupnLgblpppS6cNzzbC/qhtk2ymguvk22
         +wSQ==
X-Gm-Message-State: AJIora8hjdfBiQ9h3oENlNck3gJ20PKNdZI+cXbb3Fz0yiXO6aNpqGIa
	cHpvZAuvD90Qy7+7gMS2Gfw=
X-Google-Smtp-Source: AGRyM1uNSM2swQovM0d2bmA+5w2xaBUlEO2v0hdh3HwikbxlmcCxOLppetnw/YPlKu1SVWj5n2sW6Q==
X-Received: by 2002:a5d:5492:0:b0:210:2f29:b1cf with SMTP id h18-20020a5d5492000000b002102f29b1cfmr3370950wrv.468.1655189573934;
        Mon, 13 Jun 2022 23:52:53 -0700 (PDT)
Received: from ?IPV6:2a0b:e7c0:0:107::70f? ([2a0b:e7c0:0:107::70f])
        by smtp.gmail.com with ESMTPSA id b16-20020a5d4b90000000b0020c5253d8c2sm11070061wrt.14.2022.06.13.23.52.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 23:52:53 -0700 (PDT)
Message-ID: <8c1df911-17b1-4db4-05cd-abcb4146e562@kernel.org>
Date: Tue, 14 Jun 2022 08:52:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [BUG] rockpro64 board hangs in console_init() after commit
 10e14073107d
Content-Language: en-US
From: Jiri Slaby <jirislaby@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>, sunjunchao2870@gmail.com,
 jack@suse.cz, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmladek@suse.com, senozhatsky@chromium.org,
 rostedt@goodmis.org, john.ogness@linutronix.de, keescook@chromium.org,
 anton@enomsg.org, ccross@android.com, tony.luck@intel.com, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 maco@android.com, hch@lst.de, gregkh@linuxfoundation.org
References: <Yqdry+IghSWnJ6pe@monolith.localdoman>
 <297b268a-85de-bc8c-88eb-b8d050ac1ec3@kernel.org>
In-Reply-To: <297b268a-85de-bc8c-88eb-b8d050ac1ec3@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_235256_936508_8920DDF6 
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 14. 06. 22, 7:15, Jiri Slaby wrote:
> On 13. 06. 22, 18:54, Alexandru Elisei wrote:
>> I've booted a kernel compiled with CONFIG_PROVE_LOCKING=y, as the 
>> offending
>> commit fiddles with locks, but no splat was produced that would 
>> explain the
>> hang.
> 
> It's too early for lockdep. Could you try to move lockdep_init() before 
> console_init() in start_kernel()?

Sorry, ignore this, lockdep_init() only dumps some info.

-- 
js
suse labs

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
