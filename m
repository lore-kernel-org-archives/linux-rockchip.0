Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 566F5CA0EC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 20:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1ePAuroAosPOqx8XoN9ruePFkt2Df15AaAL3S++5e8=; b=bdE1lyUzE7S1DS
	QKv1fuPhseUCdAcdvqOtoVPZdglLM443rcWTdw32j/t7qStxuDWNNfAwghxci4GFDtaH8LXU5jP9B
	eeVJ/CjSuWqCjVIp0mMOss31fpuDTziS6huL06SLjUX55DDRJUHJaiaNZje9TNZ1La5zv7/ghwLFx
	0viS2R3gnj6O+ucewibaBsK76TfECU5pqERLvFQz/LLcopC3b9xblRWfqtbXcqcXcJPEN2v2GcP5q
	mWKaQZticg+hc2q7ELa+WOyxssrN1PBnt8rmRUzeX1yg91T1AjPPAimEE/cmjK7THEqdxAKsYVdfd
	DSclcK//FwfPzCwsXbIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulvgT-0000000Bwr2-10Qh;
	Tue, 12 Aug 2025 20:33:25 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulsTw-0000000BVwn-386I;
	Tue, 12 Aug 2025 17:08:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1755018476; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=X2+6LwOk6qAv9zrq6LA5lWJtwOuVWCKOYnHqz+/wya1EJ7ZFLuBXrXwPuSE5Y09kXg9IW+ufBGm+8my9JZ0G0NaK1Hr2RaQ+Lq1IzsVM1UWAfnj97rhqerSSWRLjTS9w/iwPgsVhn/k1cBgfLVyE8tYPGyAA+XYPDvo7fd6AcJ4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755018476; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=sw4HIiGpcTlEANcKneYpvYEeePB5QhOBB0MDbHc9D3c=; 
	b=DydPo1JcWKdDn1l5azr8mzuF8AMH/N0ACJ6fHZBdW0i14ZqlJgQZW4PNP9C4UusAHku6ZQlbSF/gokc+99CObc2Ly4q1H6BwSuh8AVIX0mylFmQtsu56RhlToq3RcFL5ihY8ZcI30T4AWIPJp6IS1ccfLHdxzdiX+KPFIFb1kdM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755018476;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=sw4HIiGpcTlEANcKneYpvYEeePB5QhOBB0MDbHc9D3c=;
	b=h1kA7+0Ixsm5zg0SIUI3cJXY0kA3JL2n/i4eyh20FfZKM4fe0xcNwT6EgM15ZOqz
	clya8QxUyjydBdtY+7ZYDY2PeYd/sEVspUvj9ic1w/Q92BqmykR2RIn2LA/ReGuqQel
	Te6aYj3DP5kBM8m4Nf55CcEnK8QafOaPGGNob5Os=
Received: by mx.zohomail.com with SMTPS id 1755018474668548.5768361747636;
	Tue, 12 Aug 2025 10:07:54 -0700 (PDT)
Message-ID: <f3b7414c-8182-4018-951b-b6c64653c38d@collabora.com>
Date: Tue, 12 Aug 2025 20:07:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/12] media: rkvdec: Add H264 support for the VDPU381
 variant
To: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
References: <20250808200340.156393-1-detlev.casanova@collabora.com>
 <20250808200340.156393-10-detlev.casanova@collabora.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20250808200340.156393-10-detlev.casanova@collabora.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_100816_822931_7D577564 
X-CRM114-Status: UNSURE (   7.35  )
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

On 8/8/25 23:03, Detlev Casanova wrote:
> +static struct rcb_size_info vdpu381_rcb_sizes[] = {
> +	{6,	PIC_WIDTH},	// intrar
> +	{1,	PIC_WIDTH},	// transdr (Is actually 0.4*pic_width)
> +	{1,	PIC_HEIGHT},	// transdc (Is actually 0.1*pic_height)
> +	{3,	PIC_WIDTH},	// streamdr
> +	{6,	PIC_WIDTH},	// interr
> +	{3,	PIC_HEIGHT},	// interc
> +	{22,	PIC_WIDTH},	// dblkr
> +	{6,	PIC_WIDTH},	// saor
> +	{11,	PIC_WIDTH},	// fbcr
> +	{67,	PIC_HEIGHT},	// filtc col
> +};
> +
> +const struct rkvdec_config config_vdpu381 = {

Nit: config_vdpu381 should be declared as "static", same for
config_vdpu383 in the next patch

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
