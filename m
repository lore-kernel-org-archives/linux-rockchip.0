Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA09C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 09:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytaT/7aMqppWrE4XIqDgH5Esiu5BhCR3xnjAJZf9bt4=; b=2olVYXQjLsO8vO
	iL8qB9b6HhL3ZPXjRtCRdqTTHDAKiNjB6RXrbW4G0ZH9D7SuyqPQW+3A0J276cQa1E7C5RsBwA/iF
	ymW2D44IrVvq0PPPadYKRO20eXG9DT9pJtriAhUkzknxn00Nih7OpF+pHBDsiPFs5Yg0IZTf6xCJP
	A64VfQCxT4Erw//y78gknOmVYr8RDWbMMul9Svg/hoXnAL2a1LghGtF2680ci35lar9tjb3Ht0i4N
	X18PIYSP2J6GZV/d12FXA/jREPGmlnzZfBRKdbeoFw4HdBKS5ZMLG/7V6859+mqG3SlIWQ0NVPR2p
	CZ9F6mWm93vobc4jyCMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCG4K-00000003iPj-3SWz;
	Wed, 29 May 2024 09:58:04 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCG4G-00000003iNU-3CWQ;
	Wed, 29 May 2024 09:58:02 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a59cc765c29so111267666b.3;
        Wed, 29 May 2024 02:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716976677; x=1717581477; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tM9NVJO5ERbRVncEwJVxXR7CMcdJybzoYCJKI2cSjJY=;
        b=EatUInGg6k8YQqJij4q+aorg9DftpCzmSPqrLHGKLZ1sXQp1iJ6GfZfSEpgE6FtHZa
         vhJfRQZzOsWZm7iJd5rOSTV1XjfiwXms4hgsQEHGt4uXgB40O5LrPZXXCalgely5bfk8
         muHxyjEyn4SJ5VEESAU5rSydPnZZbmYJ7Qq/Y5wjzoQ74TsOunQ0oPLpFzKH6tIhjZPV
         QQkjQs2FcywVYQRDJK01TCjfiCdX7fgYop9GvXTCK4WFJHBgMLNZsPYEMBvNaNmIdCth
         MtYJEl0wOUPmRrCWM3/cekcsIedSwCOQUMrDoo4LhyZB5M6KtkhQg3nKYQtZv+a9sZ8r
         BOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716976677; x=1717581477;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tM9NVJO5ERbRVncEwJVxXR7CMcdJybzoYCJKI2cSjJY=;
        b=MFsfVlf08gLu4K74iaO+5ZHyWUhCL3dHXKiG9NVs2bbHU1oBmFzhaK2d0xqFrrbaGK
         B/6rgntHzZ15Y4TNyByzPMYn/75HqQ5CfmBm0VTB77AKG5M8Geji5YqZL4MFhFsXR/rm
         wfCVp5dbt/PVx4IgzgKlcifHlbbzsRsFF3LZSdd8DH2X2NNn+yF5v6Iaj64lzP0DccCo
         gyJuvxA972QmvRUxhF/Bz/edcLFSxG9GTcgk4VHXgUmOT7zIc6VNj0LnKrTS3K9zUmGj
         aizquWBtUd50onwSC+xQpshyYaJP8+eU4W9S0T92SQaXFCAhvaiXibsv6qiJxMnpezid
         pF7A==
X-Forwarded-Encrypted: i=1; AJvYcCUhxBPFNeg0NRwOqCSA+rZahh0EOTfye2RMbSSQcrwtKus++sF/qh/9mzPyclYcq+70fClNZDSYK+EDDkT6uh/WYy76nTRjadkIK1Aoc89DOuqYEII=
X-Gm-Message-State: AOJu0YwodPoRodjUeEwnOocfkZ24fGlwXs4oUx3dzQ/rwBhYgBH+OuK8
	Xnp40poqVfmBtyM2XvU5qXOmvCUvQdoW6mesnBvOKsxIhlPd0CL/C70cgS701Nnv8AXmhtq5Vwd
	OPJnPZIT0SfMNuRPdsmQZTor4wf8=
X-Google-Smtp-Source: AGHT+IGOp5wkK1bnw+0O7gHeuICSWfLY1jISrchSQva5fYlR915OtoYk8ONFoQWe1BvmVTeQqJ5xRZ614/Cf9Ora6bo=
X-Received: by 2002:a17:906:8920:b0:a5a:8ca4:6781 with SMTP id
 a640c23a62f3a-a6265148b7emr800169966b.51.1716976677229; Wed, 29 May 2024
 02:57:57 -0700 (PDT)
MIME-Version: 1.0
References: <673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org>
In-Reply-To: <673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 29 May 2024 13:57:45 +0400
Message-ID: <CABjd4YxD41DEkBCZfkznLboEY9ZVOfTCLcj4S_kkcsVswbANyQ@mail.gmail.com>
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Make preparations for
 per-RK3588-variant OPPs
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, quentin.schulz@cherry.de, wens@kernel.org, 
	daniel.lezcano@linaro.org, didi.debian@cknow.org, 
	krzysztof.kozlowski+dt@linaro.org, viresh.kumar@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_025801_073215_AFFF9CA4 
X-CRM114-Status: GOOD (  18.49  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRHJhZ2FuLAoKT24gV2VkLCBNYXkgMjksIDIwMjQgYXQgNjoxNOKAr0FNIERyYWdhbiBTaW1p
YyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPgo+IFJlbmFtZSBhbmQgbW9kaWZ5IHRoZSBS
SzM1ODggZHRzaSBmaWxlcyBhIGJpdCwgdG8gbWFrZSBwcmVwYXJhdGlvbnMgZm9yCj4gdGhlIGFi
aWxpdHkgdG8gc3BlY2lmeSBkaWZmZXJlbnQgQ1BVIGFuZCBHUFUgT1BQcyBmb3IgZWFjaCBvZiB0
aGUgc3VwcG9ydGVkCj4gUkszNTg4IFNvQyB2YXJpYW50cywgaW5jbHVkaW5nIHRoZSBSSzM1ODhK
Lgo+Cj4gQXMgYWxyZWFkeSBkaXNjdXNzZWQsIFsxXVsyXVszXSBzb21lIG9mIHRoZSBkaWZmZXJl
bnQgUkszNTg4IFNvQyB2YXJpYW50cwo+IHJlcXVpcmUgZGlmZmVyZW50IE9QUHMsIGFuZCBpdCBt
YWtlcyBtb3JlIHNlbnNlIHRvIGhhdmUgdGhlIE9QUHMgYWxyZWFkeQo+IGRlZmluZWQgd2hlbiBh
IGJvYXJkIGR0cyBpbmNsdWRlcyBvbmUgb2YgdGhlIFNvQyBkdHNpIGZpbGVzIChyazM1ODguZHRz
aSwKPiByazM1ODhqLmR0c2kgb3IgcmszNTg4cy5kdHNpKSwgcmF0aGVyIHRoYW4gcmVxdWlyaW5n
IHRoZSBib2FyZCBkdHMgZmlsZSB0bwo+IGFsc28gaW5jbHVkZSBhIHNlcGFyYXRlIHJrMzU4OCot
b3BwLmR0c2kgZmlsZS4gIFRoZSBjaG9pY2Ugb2YgdGhlIFNvQyB2YXJpYW50Cj4gaXMgYWxyZWFk
eSBtYWRlIGJ5IHRoZSBpbmNsdXNpb24gb2YgdGhlIFNvQyBkdHNpIGZpbGUsIGFuZCBpdCBkb2Vz
bid0IG1ha2UKPiBtdWNoIHNlbnNlIHRvLCBlZmZlY3RpdmVseSwgYWxsb3cgdGhlIGJvYXJkIGR0
cyBmaWxlIHRvIGluY2x1ZGUgYW5kIHVzZSBhbgo+IGluY29tcGF0aWJsZSBzZXQgb2YgT1BQcyBm
b3IgdGhlIGFscmVhZHkgc2VsZWN0ZWQgU29DIHZhcmlhbnQuCgpJbmRlZWQsIGluY2x1ZGluZyBq
dXN0IG9uZSAuZHRzaSBmb3IgdGhlIGNvcnJlY3QgU29DIHZhcmlhbnQgYW5kIG5vdApoYXZpbmcg
dG8gYm90aGVyIGFib3V0IHdoYXQgb3RoZXIgYml0cyBhbmQgcGllY2VzIGFyZSByZXF1aXJlZCB0
byB1c2UKdGhlIGZ1bGwgU29DIGZ1bmN0aW9uYWxpdHkgc291bmRzIGdyZWF0ISBUaGFua3MgZm9y
IHB1dHRpbmcgdGhpcwp0b2dldGhlciBzbyBwcm9tcHRseSEKClNvbWUgY29uc2lkZXJhdGlvbnMg
YmVsb3cuCgo+IE5vIGludGVuZGVkIGZ1bmN0aW9uYWwgY2hhbmdlcyBhcmUgaW50cm9kdWNlZC4g
IChTdGlsbCB0byBiZSBhZGRpdGlvbmFsbHkKPiB2ZXJpZmllZCBpZiB0aGUgcGF0Y2ggbW92ZXMg
Zm9yd2FyZCBmcm9tIHRoZSBSRkMgc3RhdGUuKQo+Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXJvY2tjaGlwLzY0NmEzM2UwLTVjMWItNDcxYy04MTgzLTJjMGRmNDBlYTUxYUBj
aGVycnkuZGUvCj4gWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL0NB
QmpkNFl4aT0rM2drTm5IM0J5c1V6ellzamktPS15Uk90ekVjOGpNX2cwcm9LQjAtd0BtYWlsLmdt
YWlsLmNvbS8KPiBbM10gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMDM1
YTI3NGJlMjYyNTI4MDEyMTczZDQ2M2UyNWI1NWZAbWFuamFyby5vcmcvCj4KPiBTaWduZWQtb2Zm
LWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KPiAtLS0KPiAgLi4uaW5jdHJs
LmR0c2kgPT4gcmszNTg4LWNvbW1vbi1waW5jdHJsLmR0c2l9IHwgICAgMAoKUmVuYW1pbmcgdGhl
IHBpbmN0cmwgaW5jbHVkZXMgc2VlbXMgc3VwZXJmbHVvdXMgLSBtYXliZSBrZWVwIHRoZW0gYXMK
dGhleSB3ZXJlIHRvIG1pbmltaXplIGNodXJuPwoKPiAgLi4uL3tyazM1ODhzLmR0c2kgPT4gcmsz
NTg4LWNvbW1vbi5kdHNpfSAgICAgIHwgICAgMiArLQo+ICAuLi5uY3RybC5kdHNpID0+IHJrMzU4
OC1mdWxsZmF0LXBpbmN0cmwuZHRzaX0gfCAgICAwCj4gIC4uLi97cmszNTg4LmR0c2kgPT4gcmsz
NTg4LWZ1bGxmYXQuZHRzaX0gICAgICB8ICAgIDQgKy0KClRvIG1lLCAiZnVsbGZhdCIgZG9lc24n
dCBsb29rIHN1cGVyIGRlc2NyaXB0aXZlLCBhbGJlaXQgZnVuIDopCgpIb3cgYWJvdXQgd2UgcmVu
YW1lIHRoZSBleGlzdGluZyByazM1ODguZHRzaSBhbmQgcmszNTg4cy5kdHNpIHRvCnNvbWV0aGlu
ZyBsaWtlIHJrMzU4OC1kZXZpY2VzLmR0c2kgYW5kIHJrMzU4OHMtZGV2aWNlcy5kdHNpCihwcmVz
ZXJ2aW5nIHRoZSBpbmhlcml0YW5jZSBiZXR3ZWVuIHRoZW0pLCBhbmQgdGhlbiBJIGFkZApyazM1
ODhzLW9wcC5kdHNpIGFuZCByazM1ODhqLW9wcC5kdHNpIGluIGEgZm9sbG93LXVwIHBhdGNoPwoK
VGhlbiB3ZSBrZWVwICJ0aGluIiB2ZXJzaW9ucyBvZiByazM1ODguZHRzaSwgcmszNTg4cy5kdHNp
IGFuZApyazM1ODhqLmR0c2kgZm9yIGJvYXJkIGZpbGVzIHRvIGluY2x1ZGUuIFRoZSBtaXgtYW5k
LW1hdGNoIG9mCmRpZmZlcmVudCBvbi1jaGlwIGRldmljZXMgYW5kIGRpZmZlcmVudCBPUFBzIHRo
ZW4gZ2V0cyB0cmFuc3BhcmVudGx5CnJlcHJlc2VudGVkIHdpdGhpbiB0aG9zZSAidGhpbiIgLmR0
c2ksIHNvbWV0aGluZyBsaWtlIHRoaXM6CgpyazM1ODguZHRzaToKI2luY2x1ZGUgInJrMzU4OC1k
ZXZpY2VzLmR0c2kiCiNpbmNsdWRlICJyazM1ODhzLW9wcC5kdHNpIgoKcmszNTg4cy5kdHNpOgoj
aW5jbHVkZSAicmszNTg4cy1kZXZpY2VzLmR0c2kiCiNpbmNsdWRlICJyazM1ODhzLW9wcC5kdHNp
IgoKcmszNTg4ai5kdHNpOgojaW5jbHVkZSAicmszNTg4LWRldmljZXMuZHRzaSIKI2luY2x1ZGUg
InJrMzU4OGotb3BwLmR0c2kiCgo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC5kdHNpICAgICAgfCAgNDE0ICstLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OGouZHRzaSAgICAgfCAgICA2ICstCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4cy5kdHNpICAgICB8IDI2NzEgKy0tLS0tLS0tLS0tLS0tLS0KClJlbmFtZSBkZXRlY3Rp
b24gZGlkbid0IGRvIGEgcGFydGljdWxhcmx5IGdyZWF0IGpvYiBoZXJlIC0gd29uZGVyIGlmCndl
IGNhbiBkbyBhbnl0aGluZyBhYm91dCBpdCB0byBtaW5pbWl6ZSB0aGUgcGF0Y2ggc2l6ZSBhbmQg
ZW5zdXJlIHRoYXQKdGhlIGNoYW5nZSBoaXN0b3J5IGlzIHByZXNlcnZlZCBmb3IgZ2l0IGJsYW1l
Li4uCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
