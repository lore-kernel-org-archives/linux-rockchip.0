Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E61AEC47096
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:48:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BAFD861263
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:48:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BAFD861263
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdO/NumI4xMuSV0QULSuUafdGNBMNeawQ5kBB3pCjKw=; b=oIgLo10mfUXb9/
	FLxfv7A3MUxqw90xu/bu/Ugr3mkPsXThLatmOh3+hLN/Cq36uB2AB+CifyZaU9kLYxjNaiTmMDkvG
	6CrhiWMMZFtgF3ARre220W1UTlZnghgjlxx/RFfh/AAh9oqYe3h+wIl64QjVFH5efUsapjMt6WMKL
	XTj3WfWMWUQ25Xinu1ztC8C2SFBmrBHaq62WkJeJBBLHuRkxn2zIjP5RcddpI73kFbGb/CISXxVlQ
	if3GGnAURAIpZIBQ6qta4Jtkisyl5TYNgFD4+mnyT2K13FVR5OlFB1mKMeWE5xBHHLKcRhWWUS5h0
	Q2678SSVi43aqeQ21JKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo7Yq-00HXSI-Hq; Tue, 01 Jun 2021 16:48:12 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo7Yn-00HXR7-4L
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 16:48:10 +0000
Received: by mail-ot1-x330.google.com with SMTP id
 h19-20020a9d6f930000b02903c0c4560e99so1494762otq.1
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Jun 2021 09:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ZJrNStiRC3o/Jtcih0sDE1Ju7mSUxWw1odN8y2E3Q40=;
 b=QJEPUhBNGPtTSsGaEhDTpuleVPtslvjLb5WXb4NVTRTl7zgNtcCGycm790VduwHBxX
 p8oPK30Bl24/GJl6AHBVXZqFZjijatf/ObSXEyPiitOcn7LJWh1psE0pvNDgdvBNGJUt
 cH7tKKKo0REZVtW0CCfJ4c10ba3wA97YO5yJecHRXf1ehKFVlmFRLhk49i7/DaqFprtj
 Cdr+9W+ZuDZ/YD8shXCna4tYf7A2/dtwG9JBE4zmniTR8iYUK0uOuyhf21mionKBjkWt
 kQzAPXNxtIx3TWi3n2FGbtLMsNNDGNEzfYbbLwEQa/mS5T6njag8NvWjSwDE+9vdpq3g
 4j8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZJrNStiRC3o/Jtcih0sDE1Ju7mSUxWw1odN8y2E3Q40=;
 b=iU7wiVsuKFW3iBewPk9TsAB8MhCpaKdBo6pFRpSNmJ9LuLaMs9d1vno5W3BI/FtHBU
 56z/4UbdRN6AdKZFOOw6DMu+yw87s9EfAczuus0pEFz/IIwC93ya3Z/yzye0GJfE27um
 ViHCVl7+Xihy9yDrDW5jS0Q4Y/UlKs6MjG33HkVeRCfmXM+aJTXNlZDWuQpEnwNtfPeh
 iKKXxLCYO3sBxR2YWyzo7kmwQPrnVhD/3YOxGQ8JBawv7x/tIcQqGFFyNJg0Mvgm0hzI
 7dhxASVJUdsWhlYM6pcwoh9vs4Ay2eKpiU5RcFHiM106iMfpGRjXo28rXNVFmb0xDsdW
 n2FQ==
X-Gm-Message-State: AOAM531UKMYfpO35TF/t1psqoMa++sbQbjaLplZxNyoWRTDTgW3gYxN+
 RSqFq/Z8blfkK4/gY59P5cI=
X-Google-Smtp-Source: ABdhPJyQKrTDt9O97QsIXptl5eP/nuQUWjQWrP2J81xosFCU/bVV6p5Sed91mztsQtzaBhgihCdFQA==
X-Received: by 2002:a05:6830:2141:: with SMTP id
 r1mr22039795otd.13.1622566088279; 
 Tue, 01 Jun 2021 09:48:08 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id z25sm1732590oto.72.2021.06.01.09.48.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 09:48:07 -0700 (PDT)
Date: Tue, 1 Jun 2021 11:48:03 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Message-ID: <20210601164803.GA40@wintermute.localdomain>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell> <20210601155832.GC2165650@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601155832.GC2165650@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_094809_214367_0ED36490 
X-CRM114-Status: GOOD (  19.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdW4gMDEsIDIwMjEgYXQgMDQ6NTg6MzJQTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIFR1ZSwgMDEgSnVuIDIwMjEsIExlZSBKb25lcyB3cm90ZToKPiAKPiA+IEkndmUgYXBw
bGllZCB0aGUgbm9uLUFybSBwYXRjaGVzLgo+ID4gCj4gPiBUaGUgZm9sbG93aW5nIGNoYW5nZXMg
c2luY2UgY29tbWl0IDZlZmI5NDNiODYxNmVjNTNhNWU0NDQxOTNkY2NmMWFmOWFkNjI3YjU6Cj4g
PiAKPiA+ICAgTGludXggNS4xMy1yYzEgKDIwMjEtMDUtMDkgMTQ6MTc6NDQgLTA3MDApCj4gPiAK
PiA+IGFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Ogo+ID4gCj4gPiAgIGdp
dDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUvbWZkLmdpdCB0
Yi1tZmQtYXNvYy12NS4xNAo+ID4gCj4gPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8g
NDM3ZmFhYTZjZWJhZGY4ZmY0YzJjMjhkN2NiMjZlZDRlMzRhZWIxNDoKPiA+IAo+ID4gICBkdC1i
aW5kaW5nczogQWRkIFJvY2tjaGlwIHJrODE3IGF1ZGlvIENPREVDIHN1cHBvcnQgKDIwMjEtMDYt
MDEgMTM6NDA6NDEgKzAxMDApCj4gPiAKPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IEltbXV0YWJsZSBicmFuY2gg
YmV0d2VlbiBNRkQgYW5kIEFTb0MgZHVlIGZvciB0aGUgdjUuMTQgbWVyZ2Ugd2luZG93Cj4gPiAK
PiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiA+IENocmlzIE1vcmdhbiAoMyk6Cj4gPiAgICAgICBtZmQ6IEFkZCBSb2Nr
Y2hpcCByazgxNyBhdWRpbyBDT0RFQyBzdXBwb3J0Cj4gPiAgICAgICBBU29DOiBBZGQgUm9ja2No
aXAgcms4MTcgYXVkaW8gQ09ERUMgc3VwcG9ydAo+ID4gICAgICAgZHQtYmluZGluZ3M6IEFkZCBS
b2NrY2hpcCByazgxNyBhdWRpbyBDT0RFQyBzdXBwb3J0Cj4gPiAKPiA+ICBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JrODA4LnR4dCB8IDE4OCArKysrKysrKysKPiA+ICBk
cml2ZXJzL21mZC9yazgwOC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA4MSArKysr
Cj4gPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCAgICAgICAgICAgICAgICAgICAgICAgfCAg
ODEgKysrKwo+ID4gIHNvdW5kL3NvYy9jb2RlY3MvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICA2ICsKPiA+ICBzb3VuZC9zb2MvY29kZWNzL01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMiArCj4gPiAgc291bmQvc29jL2NvZGVjcy9yazgxN19jb2RlYy5jICAgICAg
ICAgICAgICAgICAgfCA1MzkgKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgNiBmaWxlcyBj
aGFuZ2VkLCA4OTcgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9z
b2MvY29kZWNzL3JrODE3X2NvZGVjLmMKPiAKPiBMb29rcyBsaWtlIHRoZSBidWlsZGVycyByZXBv
cnRlZCBhIFc9MSB3YXJuaW5nIGludHJvZHVjZWQgYnkgdGhlIHNldC4KPiAKPiBXb3VsZCB5b3Ug
bGlrZSBtZSB0byBmaXggaXQgYW5kIHN1Ym1pdCBhIHBhdGNoPwoKSWYgaXQncyBhIHNpbXBsZSBm
aXggc3VyZS4gSSdtIHB1bGxpbmcgdGhlIGJyYW5jaCBub3cgYW5kIHdpbGwgY29uZmlybQp0aGUg
d2FybmluZyBvdGhlcndpc2UuCgpUaGFuayB5b3UuCgo+IAo+IC0tIAo+IExlZSBKb25lcyBb5p2O
55C85pavXQo+IFNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwo+IExp
bmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29Dcwo+IEZvbGxvdyBM
aW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
