Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5232AC4453A
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 13:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qx5NAalDJ/OuGfs9DiobOueQ0zajzn0X97tYw9lMrZY=; b=KEW9NRugQ5qPrc
	8+Ao/YXvJf4hschkd5lqzSw93pgysNeIF5G8sUw5qJYLc4wZtORF/bl1gXMQ/tarR3rsZzORjlQDK
	RdO+sq89Rr5XmHp0GHWwg1G/8ZH95cOvlSrAXQJVitD+c5ldUbhPBEI+Uyd40m8369PmIgrGVx+0N
	7GCbo16jm1DK2G9JWUcrZ4T1i6vcj3YNJx12jXOvRkcqWnuYlkXvYCBNhxJrnZYV6An3o7LRCHEK6
	vXZy76J7V26JWHEQw/YYEYlWF9Va5kq3eIUR7zub1DIa5OO9hDTkpWDVyGocwP8HwyNvb8kgoN0tK
	/rRoafXbjPUxFiRB5Xgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYdK-00000005YMQ-3Xil;
	Wed, 21 Jan 2026 13:52:30 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYdI-00000005YLw-2hkU;
	Wed, 21 Jan 2026 13:52:30 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769003534; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=gtuHqyJdIm26Gi68yEFskeWFD9ZoG4RxqzDfP4x6Du8ae40H3vouNHmQt1cjr+SuRR6//aDwJfE+FMqbNotpiJ5L8PcynHwlVfHjRwy/Kvmf9LJfWN3FKbur8MqS4gOur9suEzsY4SJVKIrDjIWSfdOXvOBSFhljA2WMNH9d+18=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769003534; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=X7gT9UC4sQcenS3aM2Pap8cxEe9QaY6Up1+QlLfmUqw=; 
	b=G31Z5e6m9YgwA320ovrLK3t25mHfHWU8I70IFq3nqPLpoDp1JrA9V0Rlk/t7/epUORI64E+eVxSlCt+W9zxNiyYi6MKzK/DCpVSdIxt2qfpG63iz5kNne5aoQ/Jl0hviLFKIPzYjkD9rw+4Kl/dr6rukuX+KtqG1N1mGCSS4c5M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769003534;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=X7gT9UC4sQcenS3aM2Pap8cxEe9QaY6Up1+QlLfmUqw=;
	b=J8wuY4QuC0BtQTpdyPyiss5sy28ILKTaKxLvFE/5mr3F6BlD5qPPdylW9DS9c2Zq
	QXihqonNeBPieNEid5VgFRi5QFUoLZTEXnS6KZEpecQqDKQNrOFYw9NNV/iYUWBP9rv
	j70kwKBKFTeFBknZd1L7IejUKmxXYWxWxycn+yHQ=
Received: by mx.zohomail.com with SMTPS id 176900353209289.89941655481675;
	Wed, 21 Jan 2026 05:52:12 -0800 (PST)
Message-ID: <4e0de2ff-4616-4e49-a419-1bdfb03e1430@collabora.com>
Date: Wed, 21 Jan 2026 14:52:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 3/6] iommu: Add verisilicon IOMMU driver
To: =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>
Cc: will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 kernel@collabora.com
References: <20260114100922.149187-1-benjamin.gaignard@collabora.com>
 <20260114100922.149187-4-benjamin.gaignard@collabora.com>
 <3082a454-31dc-42a2-85a6-0fd0c87bf31b@collabora.com>
 <25htwrdapwwvumlaqlu5oywcnnbss5kjyvnv6cxrx42q7mfhuw@wyagcnc3scgf>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <25htwrdapwwvumlaqlu5oywcnnbss5kjyvnv6cxrx42q7mfhuw@wyagcnc3scgf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_055228_741042_327B51EF 
X-CRM114-Status: UNSURE (   7.60  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDIxLzAxLzIwMjYgw6AgMTI6NTQsIErDtnJnIFLDtmRlbCBhIMOpY3JpdMKgOgo+IE5vdGUg
dGhhdCBJIHN0b3AgdGFraW5nIGNoYW5nZXMgZm9yIHY2LjIwIChleGNlcHQgZml4ZXMpIGJ5IG5l
eHQgd2Vlay4gSSB5b3UKPiB3YW50IGEgY2hhbmNlIHRvIGhhdmUgdGhpcyBjb2RlIGluIDYuMjAs
IHBsZWFzZSBtYWtlIHN1cmUgYSB2MTMgaXMgaW4gbXkgaW5ib3gKPiBieSB0b21vcnJvdy4KCkkg
aGF2ZSB2MTMgcmVhZHkgYnV0IEknbSB3YWl0aW5nIGZvciB0aGUgY29uY2x1c2lvbiBvZiB0aGUg
dGhyZWFkIHdpdGggV2lsbCB0byBzZW5kIGl0LgpUaGFua3MgZm9yIHRoZSByZW1pbmRlci4KCkJl
bmphbWluCgo+Cj4gLUpvZXJnCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
