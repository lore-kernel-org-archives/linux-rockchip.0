Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB69C61DFD
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 08:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDitYlaVgf+ZPpf7Ato+lR33oNy/jG/M9WIjDvn77oY=; b=wXR+saFGs71o4m
	dWRwRYexe5hR9bFLjPRWfKtTL1CuzQqFxaiQtwbET4+kt5fcYLde5wpWynF2Z5bYIqL3nWIMeR4iU
	Dcx9eZ+IGHnkNGShBYbr3n/vZpQsJpZvec8DgUENK1cHeptT7JyDsNKyWC2A2GTzNGR9sGd5Ozg8T
	MsdLK5s3AW+ie+7NamdkltLGDAHuN8APlZQ2K9hPT1uAhxJzezhjSrcWP5U7qLgc5CraIsv7N1dVV
	ZOi6qhOg4pgccmHHe24WZ9wr8OBQa+QoS+dl5iZxSsfObQsIRffcUb61XKnYigZ4kqRFOrYvrOgk/
	35ygIfL0pZ6j2Iuz1zFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gYn-0000000E81B-37Aa;
	Wed, 02 Sep 2026 08:43:09 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gYl-0000000E803-0QRt
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 08:43:08 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6a374bea882so1292974a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 01:43:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788338585; cv=none;
        d=google.com; s=arc-20260327;
        b=Ya3+d3rEcSniebNYmlVy7kULm03nw8/hDUq+Trn9DS6OPetqog/uqPJhb6uBuJtFVR
         QyfbxgBfKFTJE7Cc50dh5oqNECRMkQGv0N68XTtZH/IHpQHaradXXES6WvtQENPMq1K7
         LvVqYSCZJqlwtClznv32KVHVrDQw6PcWdmJEH9YivnZOt+mJjJnY7Wf00eUuPQfXKaCc
         +D4f3gAus/vO6itV2GcLClShvSFj6CRBycxQbBl8yWYnpI5ZhemwC5YQZnbIOgXAKqTC
         eBzNQj6CagwfBwQ/d+Mnx9xKH4T/TnJ+wdcLIs9vtIc8Nl6wJSJqgHhqQxIfwKg3IFuj
         G4aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/501w4jjREjvvsgS+ZOz+uCZPO58x///HL9BUvCfOWM=;
        fh=5qEO5FOk058RbXc8qm2t1EXRI85CfQlbhGVyNNL+HUw=;
        b=SRcsZ+EW6Ad617JXuh69K1+QC4JNrpvL/G/K+IT4uHtJS5f6xjuhkLMsU3ZljC6HGd
         6Mx1GJ6JDbIKQd9qU/XSUZ03NzSs5MbnXS2k+gE0ukWVrDnDH6b5C1mcbXKXIlu3EfDN
         2r72Cnkfs335dtd8ND/23r/ZwXmGGGZgFf2Amofm9KS9fiEQzzXIBAOEJqxsYZcmNSWc
         fNrknxL7rhFEUX+3euVxGsVBbLfF+7qfL9pJADCyQEReI12tErpGGJu9NiUb8MeWUP3m
         3YI2J9H0jg7nK5a5sk3ms/pbTCRuCdzJyFu8ONX6ec6fO0pOUoBiqlf8xD+116MTi8D+
         wuYw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788338585; x=1788943385; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/501w4jjREjvvsgS+ZOz+uCZPO58x///HL9BUvCfOWM=;
        b=BAj59jbSXsd8VMCZBRBquj6eAE3fjfADPatRi+K2mGcJW8AFZQ9gNNMeSurMJvW6v3
         x869LU4cU372DbBsCienB57O3f00XQME0o1X9GTJV2gtcFRe5XEHTd9PgHVS/8ruhbgO
         tazqtqDUJFxuiB2Pf1To1ZUHeyE163IPJrZyqlpncEnrszWv5gg2RwIx1AWKCtO5XDXn
         /W+9+clQG+buv4ndf1udY04bN7Hwpe8cVDVjlkfP82sjeJZmSOROpwV7reSetneg7r6F
         qLFaG1+DgDJ0DtU0bvW/GuhPJdcgk6Us4T+zjlwMb+uchOUywyBl/4b77CgkCDWiNShW
         UEgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788338585; x=1788943385;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/501w4jjREjvvsgS+ZOz+uCZPO58x///HL9BUvCfOWM=;
        b=f5NyeTQkKwg+NFHAEiS7KaAdHYw94vkWJEQspHSzvKjJGxUwMYA9oappYpKwSzKgYx
         oUXY/8VP2CrKNHwzv7NoDtEANLLFGIzsqu/PeM2wLeEGEWPJ3Y1hh1GZLPeDmnuWK9HV
         ifO1KwtWeFaepGduYP0d81cspJPd1/d9YrjX1nXoPwl3wt6HHJF0KJ93jCAgF5cmJfTB
         WtIiTdQNaI1gHsAw/BvGb8FIcsh+1O71yG75WEJEpbfTaCgyMsutt0bCEGX0Y1EdzQLl
         Ns44DoGhE6D/HjurxYvgB5+Gnz7RVv1cwPQ6/ktmuPpZeePiK2GzUU+jO1FZpfW/SeOC
         nJew==
X-Forwarded-Encrypted: i=1; AKwUvBwu11fMaZW0g5VSWg0QFhXY0FNLDCOJHJgY3bkmEoWwMtgiYJz571YLUJfvmRcCDa4bjxTRljjc3l/ZYV+NTg==@lists.infradead.org
X-Gm-Message-State: AFuF++kwlrZVryRe8g2X/t9HdikKrd9kVE/WP3oOo4+g4ZwrWJ7K0p3g
	B28z6CRpeK0wE1JGvOwh+voKkeUtkQMWGZB4c0Ze+IWTdrUjKvw+S9F53xeipi2415G2FOowrgq
	eLBDWzjhuIy2SqE1FxinBhKMOlCcVamPPTFOc5sP7IKcG3FcgszxzkNwytg==
X-Gm-Gg: AYBFou3tgAHClJC7oM8EhdWOlrutIGhi8jyoQZ5VsykrplUc+RvZCVcQfrw4rD7+RP/
	rTqdr1xAVTN8SB8B73pOJxFYX4fVHOpBxLOV9J987njKKyULphUVEak+VT9f+a5THtNHMd8TKKY
	hYj+OSmWJu+f5S298Pnp9msbhUnxooIbEG0fU+tlCQjz/g6lkoLnl43f5XEJudq3yIjB8h2flse
	zS1OdW6YyHh1wnRmC6s0FjKlWcm9FmbPCJITR4wbutlpnKT3b/Oiwyj5xnk1ma1Nzbd8DI7wTEC
	sckPDar5UacOI9JbxDWw1GotmvV6PXaA4JP9luwQY60RjvpZr+PcXQ0FTUXNOtCtUw4mnZf3gwJ
	3
X-Received: by 2002:a17:907:9625:b0:c25:4f7c:8ec5 with SMTP id
 a640c23a62f3a-c25d5505c79mr194261566b.23.1788338585138; Wed, 02 Sep 2026
 01:43:05 -0700 (PDT)
MIME-Version: 1.0
References: <20260901234351.190506-1-anarsoul@gmail.com>
In-Reply-To: <20260901234351.190506-1-anarsoul@gmail.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 2 Sep 2026 12:42:57 +0400
X-Gm-Features: AcwNN1VBSx96Am5bMyza-3Z81_49VCDlB0IsZHW5X9pTU9Oq40nOjzgNhihFkBM
Message-ID: <CAKTNdwFqSBt4QVCuYJxTyEDsxkW96JbUirFNAgJYWVLHzGpk4A@mail.gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: rk3399: add 85.5 MHz rate to PLL rate table
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, 
	Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_014307_165752_C214E120 
X-CRM114-Status: GOOD (  16.71  )
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

SGkgVmFzaWx5LAoKT24gV2VkLCBTZXAgMiwgMjAyNiBhdCAzOjQy4oCvQU0gVmFzaWx5IEtob3J1
emhpY2sgPGFuYXJzb3VsQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA4NS41IE1IeiBpcyB0aGUgcGl4
ZWwgY2xvY2sgb2YgdGhlIHN0YW5kYXJkIERNVCAxMzY2eDc2OEA2MCBtb2RlLAo+IHdoaWNoIGlz
IHRoZSBuYXRpdmUgbW9kZSBvZiBtYW55IGNoZWFwIEhETUkgcGFuZWxzLgo+Cj4gVXNlIGEgMTM2
OCBNSHogVkNPICgyNCBNSHogKiA1NywgYWxyZWFkeSB1c2VkIGJ5IHRoZSBleGlzdGluZwo+IDEz
NjggTUh6IGVudHJ5KSB3aXRoIHBvc3RkaXYxID0gcG9zdGRpdjIgPSA0IHRvIGhpdCA4NS41IE1I
ego+IGV4YWN0bHkgaW4gaW50ZWdlciBtb2RlLgo+Cj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1
ZGUtZmFibGUtNQo+IFNpZ25lZC1vZmYtYnk6IFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291bEBn
bWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzOTkuYyB8IDEg
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzk5LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGst
cmszMzk5LmMKPiBpbmRleCBjMmIyNDNkN2E1ZTIuLmRiMjQxZDJkZjYyNSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL2Nsay9y
b2NrY2hpcC9jbGstcmszMzk5LmMKPiBAQCAtOTgsNiArOTgsNyBAQCBzdGF0aWMgc3RydWN0IHJv
Y2tjaGlwX3BsbF9yYXRlX3RhYmxlIHJrMzM5OV9wbGxfcmF0ZXNbXSA9IHsKPiAgICAgICAgIFJL
MzAzNl9QTExfUkFURSggMTQ4NTAwMDAwLCAxLCA5OSwgNCwgNCwgMSwgMCksCj4gICAgICAgICBS
SzMwMzZfUExMX1JBVEUoIDEwNjUwMDAwMCwgMSwgNzEsIDQsIDQsIDEsIDApLAo+ICAgICAgICAg
UkszMDM2X1BMTF9SQVRFKCAgOTYwMDAwMDAsIDEsIDY0LCA0LCA0LCAxLCAwKSwKPiArICAgICAg
IFJLMzAzNl9QTExfUkFURSggIDg1NTAwMDAwLCAxLCA1NywgNCwgNCwgMSwgMCksCgpUaGVyZSBp
cyBhbHJlYWR5IGFuIGVudHJ5IGZvciAxMzY4MDAwMDAwLCB3aGljaCBpcyAxNnggeW91ciByYXRl
LCBhbmQKdGhlIDE2eCBkaXZpc29yIHNob3VsZCBmaXQgY29tZm9ydGFibHkgaW50byB0aGUgZG93
bnN0cmVhbSBjbG9jaydzCjgtYml0IGRpdmlzb3IgZmllbGQuIERvIHlvdSByZWFsbHkgbmVlZCBh
IHNlcGFyYXRlIFBMTCByYXRlPyBIYXZlIHlvdQpjaGVja2VkIHdoYXQgdGhlIGhhcmR3YXJlIGFy
cml2ZXMgYXQgd2l0aCB0aGUgdW5tb2RpZmllZCBQTEwgdGFibGUgLQplLmcuIHZpYSAvc3lzL2tl
cm5lbC9kZWJ1Zy9jbGsvY2xrX3N1bW1hcnk/CgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
