Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EFBBC3DA49
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 09:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGC3hx7JYlJJf9cBfTWTV4qc1y9SqHQ3xPckFmRoYmg=; b=Nha5adRtGeaavM
	lKsIwcgmIxo6LWhb9COZ7Bv2l9qafPLTnw5YatWMPVkjSd6lxi7U8ZUgQnFknMlbc+WCaqaZf2k2x
	Di9+s8uJ8oeZ8iXrbZUUMSrujYWaE05qTSVUkvtAA5UioB3aAHQOxC6W00nX62WAdoJFN8MkdwlxQ
	iK/tWb7in3QiFcNFMUtzlgPNZVGOH1q1a0yLHLPNSaxI8ldAYWrmimKMPl60AjiQHijhDmhFoDVEj
	pnG44mO0i4vj7G0RcaTCi1AOmGlYx9zW9WX/FN2J/87B4cY+FslAV7jgkf2YzZCwQYut48zMALFI9
	Wh1f7F3o+Kqg1SjlnXmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXH3K-00000003QwY-036R;
	Fri, 26 Jul 2024 09:15:54 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXH3G-00000003Quz-2WQM;
	Fri, 26 Jul 2024 09:15:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721985347;
	bh=RTeg7a5/NBnZzeXWaxhUT9VJlh63EkpCYf65DHwKFvM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eeis9VVWUc/vDnNE7fv53g8nbt6B5Ka0RNjZ+/KjfWlGd2LpMSnWoBe9HjNUp9CoB
	 N5nEByoGgV0A3u7Pta7M33OkXANIA/6bwZ7R1O5jDcFUHBdvIhDpJAmfmhGyMeBXSL
	 Ly+HNtfzSEvKS59rs17LnYmwDkscWSR9rkGAhBKmb28YpWKhBbfHVW/QK9D5lb47sR
	 fAsdZM3NeNoFxm3mmp7KDcXvM3Ii9iT+/4hv54gUkDzvnleX1haSe+uwdFG7yubvwB
	 mJz1jsmWiqvDW/IS0dajDDeivsY1FnKFDx356uMUskCVhovZv1yf0mnnyOEpYUk3Gb
	 4YEoIGwftfXMA==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8605C37804D4;
	Fri, 26 Jul 2024 09:15:44 +0000 (UTC)
Message-ID: <2cbaf9a5-faf5-4019-9ae9-709fa1647a40@collabora.com>
Date: Fri, 26 Jul 2024 14:45:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/5] drm/ci: mediatek: add tests for mediatek display
 driver
Content-Language: en-US
To: Daniel Stone <daniel@fooishbar.org>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 deborah.brouwer@collabora.com, robdclark@gmail.com,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240724101015.523535-1-vignesh.raman@collabora.com>
 <20240724101015.523535-3-vignesh.raman@collabora.com>
 <CAPj87rMfs+_EMyJT1PoLTXmrosDiqQy_N4VYSA+M3R5q4sit5Q@mail.gmail.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <CAPj87rMfs+_EMyJT1PoLTXmrosDiqQy_N4VYSA+M3R5q4sit5Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_021550_801152_895F0800 
X-CRM114-Status: UNSURE (   6.81  )
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

Hi Daniel,

On 26/07/24 12:54, Daniel Stone wrote:
> Hi Vignesh,
> 
> On Wed, 24 Jul 2024 at 11:11, Vignesh Raman <vignesh.raman@collabora.com> wrote:
>> +dumb_buffer@create-clear,Fail
>> +dumb_buffer@create-valid-dumb,Fail
>> +dumb_buffer@invalid-bpp,Fail
>> +dumb_buffer@map-invalid-size,Fail
>> +dumb_buffer@map-uaf,Fail
>> +dumb_buffer@map-valid,Fail
>> +fbdev@eof,Fail
>> +fbdev@read,Fail
>> +fbdev@unaligned-read,Fail
> 
> Please skip dumb_buffer and fbdev tests for all GPU-only drivers,
> because those are testing display functionality.

Will skip these tests for gpu-only drivers. Thanks.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
