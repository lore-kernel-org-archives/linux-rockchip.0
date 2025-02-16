Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9869C02198
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Feb 2025 15:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpGxfxHYFqXiXgTnlg7YtKkInkCFYy/wId1soY6bu3w=; b=BWW7eIRfSmAt3P
	DPLN5Urge38SYXVCPlPjxC6bHvLggQS9RhiGc/AdGkhq46taQ405kYfp04drB7CWJ7e17rX2iYnXF
	p6RwXOSl1iTkUrHsXD5sfeS5Mp37V9KlKzR9mm3Bx0OV3jihTQiX/4+dz0g0u0Q4YJX+Qz62BRgc5
	cZ7QRGjgokh59AART0vnuYIQSXPGvX3P01gh3xbCxJM4zmNprXU0fTPVSzwGw+DENv/xwLHMtc/Ba
	F94zq9025FX2LETFKeNtN7ioEjYto0nSocDHjjIL+pI96Bg0mVX6PyCbYLUfE6bI0X/xddqnv+Q2/
	Acfpiq+FKP3I8M8tM8rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgXE-000000020wv-0zUk;
	Sun, 16 Feb 2025 15:26:20 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgXB-000000020vt-3Ta0
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Feb 2025 15:26:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739719560; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=cIjLMA6q4wip75J09SgotIY+SKIgXe5H6zcHb5SDCteraFyIguA+P+PA/4cAlajphaS5gGmYDdWdliSYhyFBG8nzfzIB5qmlOVeqJHTW4Ak94LOS4IyicmjM35+ZG+rpaWjrKmMWrUfBK5rF33k9J8jrsbF2EjJoSwTErKreawk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739719560; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wuJz3OjJegVg2D6QgXOcKi4rWu6OJtA2M255ix6pvV4=; 
	b=LrGZIINFYURldcSUS1FPiYmusnhqxirpt7W+cZqagxsjkRxwRfv4ozHbykhdT5uhifEK1dOJzGi/Xy4i9qXy+M4QwitPv9dfiukiKEc3ZGj/b429jz2wQimVY34RVA8SuFTKLM6fqp4z5lf5pSWfHfoo76HWYqwG/Pw+p49Xk2k=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739719560;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=wuJz3OjJegVg2D6QgXOcKi4rWu6OJtA2M255ix6pvV4=;
	b=ZW/EOkUoeiUGvjwDRlKr9NsznvsFv2PyfGt2eFREJ7rH6iRmruVjOKBkGndgl8OI
	srPtVzXjYl9LITG9HmUYXFk4h65wNhlgWzyNoxo1MOM3ygNZbHs9YCoFYx7CUhGvZnT
	y8Wf2ZF6oKTNL8i+6IF424SOAkFXog41CJl7RzfM=
Received: by mx.zohomail.com with SMTPS id 1739719558518293.9973070185242;
	Sun, 16 Feb 2025 07:25:58 -0800 (PST)
Message-ID: <ac4afb67-9ec7-405a-acf9-6287b30320d4@collabora.com>
Date: Sun, 16 Feb 2025 18:25:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] irqchip/gic-v3: Add Rockchip 3568002 erratum
 workaround
To: Marc Zyngier <maz@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>,
 XiaoDong Huang <derrick.huang@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 kernel@collabora.com
References: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
 <20250215235431.143138-2-dmitry.osipenko@collabora.com>
 <87seoe1aeu.wl-maz@kernel.org>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <87seoe1aeu.wl-maz@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_072617_952852_F8230051 
X-CRM114-Status: GOOD (  21.05  )
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

On 2/16/25 12:55, Marc Zyngier wrote:
> On Sat, 15 Feb 2025 23:54:28 +0000,
> Dmitry Osipenko <dmitry.osipenko@collabora.com> wrote:
>>
>> Rockchip RK3566/RK3568 GIC600 integration has DDR addressing
>> limited to first 4GB of DRAM. Rockchip assigned Erratum ID #3568002
>> for this issue. Add driver quirk for this Rockchip GIC Erratum.
> 
> Thanks for taking the time to submit this. It only took 5 years for
> this erratum to be published...

The erratum document itself actually is dated by 5 years ago. Only wish
the doc was made publicly available, which would've accelerated the
upstreaming process.

> However, my understanding of this issue is that the integration is
> limited to the first 32bit of physical address space, not the first
> 32bit of RAM. If the memory is placed as physical address 0, then they
> represent the same space. But this is still an important distinction.

Indeed, will correct the description in v2.

>> Note, that the 0x0201743b ID is not Rockchip 356x specific and thus
>> there is an extra of_machine_is_compatible() check. Rockchip 3588 uses
>> same ID and it is not affected by this errata.
> 
> This ID is that of ARM's GIC600, which is a very common GICv3
> implementation, and is not Rockchip-specific. Please capture this in
> the commit message.

Ack

...
>> +config ROCKCHIP_ERRATUM_3568002
>> +	bool "Rockchip 3568002: can not support DDR addresses higher than 4G"
>> +	default y
>> +	help
>> +	  The Rockchip RK3566 and RK3568 GIC600 SoC integrations have DDR
>> +	  addressing limited to first 4GB.
>> +
>> +	  If unsure, say Y.
>> +
> 
> s/DDR addresses/physical addresses/

Ack

...
> Another thing is that this patch conflates ITS and redistributors. As
> it turns out, we use the same allocator for both, but they are
> distinct architectural concepts, even if GIC600 is a monolithic
> implementation. It is OK for now, but it will have to be revisited if
> we ever move the redistributor management outside of the ITS driver.
> 
> With the other comments addressed:
> 
> Acked-by: Marc Zyngier <maz@kernel.org>

Thanks for the review!

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
