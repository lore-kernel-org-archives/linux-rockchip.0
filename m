Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6F05C19777
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 10:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Htq3MOupWlONyAshv5MfaV6jZhEJ/Fbi4eEPlrddKdE=; b=LCPgSUzFjBJJA4
	zVpBVakvpZfTf9mX8kmdaRgzcXognwex9WhQVbYSu/a9ZJHOLLgsA6fr+PRhca+JHHZ/nYpbb0LoG
	qa0o6BnDmMVJ91gjlzIjXV40M5YlIXJyylMDnkiirpcv6+TdpGvtYlEIB+OWl56IHLOKq923JISuB
	pXy6MY4ULemAUt2R6VGqKp9cwT8JU+cX6fJutsBDAai+8VN1YlS0tOG6IexspCEAzNYzhhRiqcmgT
	0zgDuWJv1+GDBVmNauFTEXz5fKPUSqY6jHlnCKkldu+Ki/t0JlauGHMicRLZ+34Yqgr6i/NXzAxbt
	DTE0FIRvjd+fty/6P8GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnElt-00000003JqJ-2pqv;
	Wed, 26 Feb 2025 10:36:09 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnEVe-00000003GgE-0Bha
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Feb 2025 10:19:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740565148; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=csbsIARRQQlFuUYUPIbTHSc640RozIOK3mo7EacFMuMO6/UzKhbCzJM8kmdpzNajEMIi/rF4txC76qjsTtn+/sGkQQICeckCFWo26sqSPH/p/W5I/hKZl0a0al0PAnE2MLlsjA4TdXGK9qzGyYA5rziK9iDSumb3RIhUFU8F0dQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740565148; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=O4slzQmUIpYAOvHEBNpBFvEqcylNtvHr3ZVDWO7ZW+w=; 
	b=iiwkFdlSGXygvqkRC8BZ8srkXRtAeKhz2Dt0DiBSIqyYW4XPdQeiOW7MGHK6l1kRL+9kft57a4ptcE1NoLYFQgfmNiVD3f90AylTJ0NasTdhWqBJLEFDidsFLivejrk6ZaDBqYnJViATqJBQg0ucTh6hEyJJTphK8Imagg28svQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740565148;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=O4slzQmUIpYAOvHEBNpBFvEqcylNtvHr3ZVDWO7ZW+w=;
	b=jaQ1thcvejnHG6x8C2RJ311+Z99vPFzUvuULgTqDj65i5yQSLlAnO2j+ClTGPRfB
	gLJVYrfbmI/hewj0EPqOfEbOHpJBCe7YKYBmCMN3hdOZu0F7lE446RdcouBnw+RpBfX
	vA38zi/puXb0/Ne3yKQL2sna8++iqyLnX5XpJ8mQ=
Received: by mx.zohomail.com with SMTPS id 1740565147313168.03192494145082;
	Wed, 26 Feb 2025 02:19:07 -0800 (PST)
Message-ID: <38faac84-965f-443f-b3b5-844fc965dbad@collabora.com>
Date: Wed, 26 Feb 2025 13:19:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/6] media: platform: synopsys: Add support for HDMI
 input driver
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20250226094946.665963-1-dmitry.osipenko@collabora.com>
 <20250226094946.665963-4-dmitry.osipenko@collabora.com>
 <6b261f80-6713-430d-93ee-9dac77f47580@xs4all.nl>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <6b261f80-6713-430d-93ee-9dac77f47580@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_021922_165229_C2BA5C5F 
X-CRM114-Status: UNSURE (   8.91  )
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

On 2/26/25 13:16, Hans Verkuil wrote:
>> +/* vb2 queue */
>> +static const struct vb2_ops hdmirx_vb2_ops = {
>> +	.queue_setup = hdmirx_queue_setup,
>> +	.buf_queue = hdmirx_buf_queue,
>> +	.wait_prepare = vb2_ops_wait_prepare,
>> +	.wait_finish = vb2_ops_wait_finish,
> These two ops are no longer needed. New drivers must not use them. I'm
> working on removing these ops, but it's not quite there yet.
> 
> I will remove these two lines manually for this v11, but if a v12 is needed,
> then make sure you drop these two lines.

Ack. Thanks for the review!

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
