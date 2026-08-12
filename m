Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D225C5CFDB
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 13:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLfA+keNSHwPqKOuWgP4udwDcre+J28t1WVFo/il4SI=; b=Glc+sI8SsG8KaF
	xklC/okbizCyL2iKNf/YoV38HXAHYsyz4Au2Pob3ImtfNOoINawb6UahIKlclqc3VksiL2An9c57S
	hIsQuOOP6WcBNb6zysyDbNghT2hYvfAZrePiesCyKk8ZnoHq2Os/WhILVJhkdX+H9YAaDxjHWl1gV
	i8bqSVeHuHoyy/61HoRgZaN168ki/sjVjD3NYYWR6SlwthBhgo84baVlNkoGwxuziy10Y9a5xnj/o
	kzpXqqimr76Dlu0+V2Rl2QUoImd4kSUfzNUze2EiHHmK1jl9l8MbeqzuFsHxN3eBzWZELjSLkIsgf
	2bOeTBQUYjgdTxthMsFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu8cI-0000000GFDc-0A3w;
	Wed, 12 Aug 2026 13:03:34 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu8cF-0000000GFD3-3pM4
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Aug 2026 13:03:33 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-47f611b3af9so109163f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Aug 2026 06:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786539810; x=1787144610; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=as36wFWfEYJzqaxcovAhzmJbolrDk8C4787yYGJjYG8=;
        b=KglGwUMdI/CHNOdot3nUqq0UL5jGQTkJB/9EmvwhG/HuCKIpEdgp6P9uraU7qXJ3rK
         uv9TAJIaBlF1gIDu7V72sV8vPVnE41yKZsrlb43An2Bg57lOuEBALyPgBAofzSrEdV27
         r+tDG2lGPtf2AOC+KHS9saIKYkDZWflqshsJ5jKPm4DmUaLhhtXEpCfcDEmYK6U+Wsn0
         gKu32aBA/Ftfd5Gp2jQ88sM5l6Bnr4TXdvsne3RK34G3iaprfeNEJfxMSn/gs6enwluX
         PvfFyuNgPZMDBwSNY4h+HcKcKGIq7rlgYDqh2rfrT5NuQ+DXjCpm3ijoSqLWoAzZkjWI
         ZXGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786539810; x=1787144610;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=as36wFWfEYJzqaxcovAhzmJbolrDk8C4787yYGJjYG8=;
        b=lxxkyD/7rL12n5kP9IMO6geV98QDix+kAWJF+xqswccx52lsuipuaCZhBAGO3L32tc
         q10e6ZBpa19t6duZlWVhRiG2UZi6S2KUDLFsjaRKMDtmlcx/dU+muEgsHmLED2PxZpf2
         pF6DFU0Q5c/JP8vb7/4sSksbIyfJhvhvh3GI4XFyGQ0SYD2An3m4TdknnS5ZlhF95Grv
         oMnrgLEEErZDgRa09KocQOymzXkvNlZSmzKZXWQJ0SouC+xGyse+gisGJ2mgCWU2abdm
         VTtU9zpRQ+jxMFK82kLAK4KZUlJwhWFpWID+gMBTlxU0Czw4et0rdwe/fSRus7oolMyF
         ldUg==
X-Forwarded-Encrypted: i=1; AHgh+Rp4mXsLAfSbG0jFnAZPKi4AD2sACB51RZTzfL3AZdFANppiBLtstGts5omWq88llNZxvQU5uDZit1+2Iwd8iA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyum1YmKjxFeGCPTC93swYRera4RFbnmp8KfxN7jJB87p4kX00t
	qNmMQRRFWEN54RRoKNuGsJcgOXxsgZDKViYHiOtlf48FEhQskoyJPNGY
X-Gm-Gg: AR+sD10lDktwpMzgDgEiM6LGojuRUS/LKWPYPXvxIrvlHim+vazp+83+OZ/B7uHUP/C
	Wp4903dYij0tZ+z+HP/SN8QmhsfQ0Grnxu8Zs4bi67fdPN4c3MJtBAsuYwg2LKJjs1WwRCrGOQY
	ieyDMwrLaEmnb/5swAt26LE6JMVVW/1E0P81MJriH0yPPR4wb+NCyLMn4l3MHSmUG9V0x40ku8w
	EWA2dmaVUJ3qMvANRwsgZfJIGW/aDlBhGtxL3HhG6VdpeMLFAj5ZEBZXbsr/l6Jx6ooCyXeBRzw
	mdv3F/8maWcB4xXDnPkARzJX+I5XYVu15+zMx90GntpPa26vN55MWdNaDqzkYaFeqWSOvpEzM0g
	Po+nRkLjdVNdq/Ehv0WlffeNVZxb4EoJ6N4I4+pIzg7/HpoyoDgGnC2zpFmedtX75kb/RlDdJjP
	rTvb9ALBVvuGoVQMdKVoz1HMKrtGzgrSj3ZGnFQ1mQQ072O+Pexz/RMsK5KKQhFBMVUOhFr67zy
	uJU5pFTaIuJKc5OWb4ft2zcfNEgzW5yFgX/ro3na/dORjM5lckxeePDPVPNZE2sIx/i
X-Received: by 2002:a5d:64e6:0:b0:47f:e8af:7687 with SMTP id ffacd0b85a97d-481528da9a6mr3640852f8f.1.1786539809937;
        Wed, 12 Aug 2026 06:03:29 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B84A6001A34C2DD5D9E0419.dsl.pool.telekom.hu. [2001:4c4e:1b84:a600:1a34:c2dd:5d9e:419])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48150d5cd2esm7316360f8f.26.2026.08.12.06.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 06:03:29 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] accel/rocket: fix shared-device lifecycle on probe failure and unbind
Date: Wed, 12 Aug 2026 15:03:04 +0200
Message-ID: <20260812130311.8252-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260731064933.12548-1-royalnet026@gmail.com>
References: <20260731064933.12548-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_060331_966036_7BFC8166 
X-CRM114-Status: GOOD (  15.82  )
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

Hi Tomeu,

A ping on this one. It has been on the list since 31 July and 2/2
carries Jiaxing's Reviewed-by.

I am pinging now rather than just waiting because the failure it
describes stopped being a code reading yesterday. I hit it on hardware
while testing Jiaxing's v7 RK3576 series on RK3588, on a tree that did
not have this series applied.

The sequence is the one 2/2 predicts: unbind core 0 while cores 1 and 2
stay bound, then bind it back. What happens without these patches, on
an Orange Pi 5 Plus with all three NPU cores:

  - the returning core takes the index of a core that is still live.
    The driver prints

      rocket fdab0000.npu: Rockchip NPU core 2 version: 1179210309

    for the device that is physically core 0;

  - inference stops being correct. The same MobileNet V1 input that
    classified as "military uniform" before the rebind classifies as
    "toilet tissue" after it, and the oracle hashes change with it;

  - throughput falls from 88.6 to 1.9 inferences per second, and core 0
    stops taking interrupts entirely - 0.00 per inference where it had
    been taking 41.74 - while core 1 absorbs everything;

  - the next unbind then dies. Ten "NPU job timed out" in a row,
    followed by

      Unable to handle kernel paging request at virtual address
      dead000000000122
      pc : destroy_workqueue+0x1b8/0x3e0
      Call trace:
       destroy_workqueue+0x1b8/0x3e0
       drm_sched_fini+0x178/0x1a8 [gpu_sched]
       rocket_job_fini+0x28/0x60 [rocket]
       rocket_core_fini+0x4c/0x78 [rocket]
       rocket_remove+0x6c/0x150 [rocket]
       ... unbind_store

    That is LIST_POISON2 being dereferenced. The sysfs write never
    returns, the task is in uninterruptible sleep and cannot be killed,
    and the machine needs a reboot.

That is the second bullet of 2/2's commit message happening: the bind
reuses the index of a still-live core and overwrites its slot while its
IRQ handler and its DRM scheduler are still active.

With the two patches applied and nothing else changed, the same
sequence - core 2 out and back, core 0 out and back, all three out and
all three back - runs clean. Twelve inference runs across two modules,
one oracle hash for all of them, correct classification every time, and
nothing in dmesg beyond the probe messages.

I am happy to resend with the tag collected if that is easier. There
is also a practical reason to have it in: the three-core RK3588 test
that Jiaxing asked for on his v7 cannot run to completion on a tree
without this, because the core-0 rebind step is what trips it.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
