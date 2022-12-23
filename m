Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 510D9C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 02:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiVYVqkc93lLpUc8ZH5tt3paXANvL9UoIGPJZLQehCc=; b=34pvCiyy3Sh5RO
	7kK4O+NHrYDSS0PGzengMaQGKJsUUumArI2HlKyZhzkFX443xW3ZhQHDIMn3rQ+JRnU+VUhDWVMpQ
	he13OVPsFbYfZxwr1htSJBr4pgw+0cW1vgY6YXK1ybHt7umq33JIBcrfVhRK1vw22d9OGPt4+vxHm
	7GBPEkPzzEe7VwwvmgDi7+FD8BusZ16bt4gTuMbipLl+OioirBlbxnxuz5EqU4mrbmNkm7stUoj4O
	at+8qYiUuunvunMkI6XZ/pIiajfE6/4vugLOso99D/f/5d5DL/YDwN1CiiUc8saKAQKj130eXAjk2
	pscWOEgt8lO7rvb5uqfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8XQD-001sCo-VZ; Fri, 23 Dec 2022 02:04:30 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8XOC-001qlk-0I; Fri, 23 Dec 2022 02:02:26 +0000
Received: by mail-qt1-x829.google.com with SMTP id jr11so2805228qtb.7;
        Thu, 22 Dec 2022 18:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CRsG7CUx+87J7Pu6OLcyLz9sGZD18C5xpw5JeWDMppU=;
        b=NWETL1fFKFE3+ojt7+70iA/Nvi3AaW8xgGrrNit6XW4IHkhisvH3W5uB/QDHeHXg25
         d3Zj/hU2pfIU6XEwsLAmJyYe5ZDemKMXcJdyXIFn2S9T3fL6hCEc+QtYriQMCr+VGFwO
         xf33e98T+99P3dZ4L4jFsf1ngO5ecRStii971iY5HLSnHAvnGwUkLBoVUcvTqZbvRk/f
         S3auB8EtZBCbQ2gosPTcLAVGufyJHQerrtZFObRuvV+o4SQVbu66cECKFP0VCjFpSB85
         OuesCyKXkgovqmBHRqzRXisZvce0ZR/APFJOqGXCPaFeh+Bk+jyBRP+3O18GSfL0tvEr
         +FDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CRsG7CUx+87J7Pu6OLcyLz9sGZD18C5xpw5JeWDMppU=;
        b=BIqYPrwRLNQlAFYSL8nf8pZcNliS1ecK9olN0xwd8zDmkYjJdqMSfnHDDS9AZ2aW6S
         CEcrh6DDpULynIPbdd+K17gNXhG/Ifv9Ljr/LkVcQSSRCrCpEPdSheKOyxMoYFVUB2uX
         yd3BJcmCStTB2IxbYOl0T73TrXSnRQ1k+3nh3+dPPH1wKzvkmgPlYt7DqifZ/QW8lKXH
         c/VIDB2arbQcUpAxc4vfBfoQH1MSIpGgsdEEBA1l4/9zv7YShTTBe0Fz8rb1svr1fypd
         AQ/fQ9OPtB32wHgQE88IK8WMPgKlZmTs8ecLOQb9BOIM3ZqQBbFL7RHLbSkuzC+HfBsX
         ux3w==
X-Gm-Message-State: AFqh2kpmrncNrCqe8c23hINX1onkDf00jgqcDa86xvALRSL0lkKcvK+V
	bkmqvy4KeS9LS5ToMcT7Wcy5Ff+i5D81q1zCLrw=
X-Google-Smtp-Source: AMrXdXuWSqU9d0Naa73zgKXG+2bkUBzdDeP5cYxNUvvg/+0hbFt+UqGRN8bc84H09RnD47HVcWQGoACYey3s3j/RNXk=
X-Received: by 2002:ac8:5147:0:b0:3a5:6047:c75c with SMTP id
 h7-20020ac85147000000b003a56047c75cmr171489qtn.434.1671760941496; Thu, 22 Dec
 2022 18:02:21 -0800 (PST)
MIME-Version: 1.0
References: <Y6Kc650FuvHFWxP0@VM-66-53-centos> <20221222172504.GA1741501-robh@kernel.org>
 <2863440.ElGaqSPkdT@diego>
In-Reply-To: <2863440.ElGaqSPkdT@diego>
From: ty <zonyitoo@gmail.com>
Date: Fri, 23 Dec 2022 10:02:10 +0800
Message-ID: <CAMmci2VfvMoY9qZ5fjM7VkxBjTimx_Wps_5eMxS9GJsiTM9rkg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add RK3566 LubanCat 1
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Peter Geis <pgwipeout@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_180224_143881_78CAA8C3 
X-CRM114-Status: GOOD (  17.91  )
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

QWNrbm93bGVkZ2VkLiBGaXggd2lsbCBiZSBpbiB2OC4KCkhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IOS6jjIwMjLlubQxMuaciDIz5pel5ZGo5LqUIDAzOjEw5YaZ6YGT77yaCj4KPiBI
aSBSb2IsCj4KPiBBbSBEb25uZXJzdGFnLCAyMi4gRGV6ZW1iZXIgMjAyMiwgMTg6MjU6MDQgQ0VU
IHNjaHJpZWIgUm9iIEhlcnJpbmc6Cj4gPiBPbiBXZWQsIERlYyAyMSwgMjAyMiBhdCAwMTo0Mzow
N1BNICswODAwLCBZdXRlbmcgWmhvbmcgd3JvdGU6Cj4gPiA+IEx1YmFuQ2F0IDEgaXMgYSBSb2Nr
Y2hpcCBSSzM1NjYgU0JDIGJhc2VkCj4gPiA+IGlzIGRldmVsb3BlZCBieSBFbWJlZEZpcmUgRWxl
Y3Ryb25pY3MgQ28uLCBMdGQuCj4gPiA+IE1pbmkgTGludXggQ2FyZCBUeXBlIENoZWFwIENvbXB1
dGVyIERldmVsb3BtZW50IEJvYXJkCj4gPiA+IEl0IGhhcyB0aGUgZm9sbG93aW5nIGNoYXJhY3Rl
cmlzdGljczoKPiA+ID4gLSBNaWNyb1NEIGNhcmQgc2xvdCwgb25ib2FyZCBlTU1DIGZsYXNoIG1l
bW9yeQo+ID4gPiAtIDFHYkUgUmVhbHRlayBSVEw4MjExRiBFdGhlcm5ldCBUcmFuc2NlaXZlcgo+
ID4gPiAtIDEgVVNCIFR5cGUtQyBwb3J0IChwb3dlciBhbmQgVVNCMi4wIE9URykKPiA+ID4gLSAx
IFVTQiAzLjAgSG9zdCBwb3J0Cj4gPiA+IC0gMyBVU0IgMi4wIEhvc3QgcG9ydHMKPiA+ID4gLSAx
IEhETUkKPiA+ID4gLSAxIGluZnJhcmVkIHJlY2VpdmVyCj4gPiA+IC0gMSBNSVBJIERTSQo+ID4g
PiAtIDEgTUlQSSBDU0kKPiA+ID4gLSAxIHggNC1zZWN0aW9uIGhlYWRwaG9uZSBqYWNrCj4gPiA+
IC0gTWluaSBQQ0llIHNvY2tldCAoVVNCIG9yIFBDSWUpCj4gPiA+IC0gMSBTSU0gQ2FyZCBzbG90
Cj4gPiA+IC0gMSBTWVMgTEVEIGFuZCAxIFBXUiBMRUQKPiA+ID4gLSA0MC1waW4gR1BJTyBleHBh
bnNpb24gaGVhZGVyCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFl1dGVuZyBaaG9uZyA8em9u
eWl0b29AZ21haWwuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBESERBWENXIDxsYXNzdHA1MDEx
QGdtYWlsLmNvbT4KPiA+Cj4gPiBESERBWENXIGlzIGEgbGVnYWwgbmFtZT8KPiA+Cj4gPiBUaGUg
cGVyc29uIHNlbmRpbmcgdGhlIHBhdGNoIGVtYWlsIHNob3VsZCBiZSBsYXN0Lgo+Cj4gV2UncmUg
b24gdjcgYWxyZWFkeSBbMF0gYW5kIGF0IGxlYXN0IHRoZSBBdXRob3JzaGlwICsgc2VwYXJhdGUg
YmluZGluZwo+IGlzc3VlIGdvdCBmaXhlZCBtZWFud2hpbGUgLSBoYXZlbid0IGxvb2tlZCBhdCB0
aGUgd2hpdGVzcGFjZSBpc3N1ZSB0aGVyZSB5ZXQuCj4KPgo+IEhlaWtvCj4KPgo+IFswXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvWTZNbHJiR0tpSVZjNnRYdEBWTS02Ni01My1jZW50b3Mv
Cj4KPiA+ID4gLS0tCj4gPiA+Cj4gPiA+IENoYW5nZWQgaW4gVjI6Cj4gPiA+ICAgLSBSZW1vdmUg
Uk5HIG5vZGUKPiA+ID4gQ2hhbmdlZCBpbiBWMzoKPiA+ID4gICAtIE1vZGlmeSBhbGwgbm9kZSBu
YW1lcwo+ID4gPgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9y
b2NrY2hpcC55YW1sICAgICB8ICAgNSArCj4gPgo+ID4gQmluZGluZ3Mgc2hvdWxkIGJlIHNlcGFy
YXRlIHBhdGNoLgo+ID4KPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZp
bGUgICAgICAgICB8ICAgMSArCj4gPiA+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LWx1
YmFuY2F0LTEuZHRzICAgfCA2MDAgKysrKysrKysrKysrKysrKysrCj4gPgo+ID4gRml4IGFsbCB0
aGUgd2hpdGVzcGFjZSBlcnJvcnMgY2hlY2twYXRjaC5wbCBjb21wbGFpbnMgYWJvdXQuCj4gPgo+
Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
