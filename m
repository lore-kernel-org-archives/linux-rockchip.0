Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 582A9C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 14:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6cmh+d+72izMa186VhsW2voqURX5H2ymnB5RoK1v3A=; b=43yXMAXzJFdG50
	ICe0BzsOXJhKwlF2heCCp4GliYKCQr2sSaqewMOJjxila/S9NeEQ2ybiIAH6RvyAJn24nzOWBX3vG
	F9OWmI28W4+DpwFWWNMfiORBkZh/70/YT6eHtpZkg1U1vFclCZTsQLi21TtDskjBTqsDEfAUeuViJ
	PqIVSdtwf+MLCPFw8bpNLnEkHS8Z3P+hQV7S6g3Am0kOUcfJkNHy9OenYOOsQ8Kj9wbrhVsHixcM4
	uM/kPPju3cBEmzYDR6x+UryUzfMxvSAEoCSdR4K+UAOl2lp1KkKPTvPrpBKBo9giN2+1u8tgOGzIV
	bUXca9A5Xb+2L5beECLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofibv-009tc3-FL; Tue, 04 Oct 2022 14:09:27 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofibk-009tab-4r; Tue, 04 Oct 2022 14:09:17 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id mx8so2371662qvb.8;
        Tue, 04 Oct 2022 07:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=k5qgEwmlmu6XfbxksdbQVs3dR7U1LRK27qi7hYRrulk=;
        b=aI9/RjvLMMZI7wMwAJpv6hZvMrUpHfzqg+UrfCD3zYxJARyK/Z75x4H6U12gEt+PS+
         LQw5KE6rT0O5kFPMKBHUb9CoRTxrY3MLgUDYKTtX7w//Fd2YB3LJM9nP79HW+iug7k22
         BDL3kqZmx7iOmiqcceXJ4M+XyhSUPbfcimOSfIu6dMvu6oW7w1ZXHmVVBfuWkStx3fM2
         qwLKhRuP/ca9+EQKeHg+1I2dTZkY/di0lSzEy7QbrVKZuSTnicCULJyHDPF5bWb122b2
         P6zfde4/8Krdur9bprfn+ovn+PPTysO2VX6CG7tHrzmCz74eY6N65r0ziMYyZItzYoNN
         Bo2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=k5qgEwmlmu6XfbxksdbQVs3dR7U1LRK27qi7hYRrulk=;
        b=KLEUkWgDCTS+3IunJDqmZ68TzvFzp085ijuInTZh2oUKrNK4nItFlC31n0rVjE65zh
         +2y22uZnJkNWEbILtHLbF3AuR3v/Efha+1sjlb2eBX4+yM8Hm47wf2telr+lczxr5/2E
         y/6pj67f9iO9sjGcjO8/OoOD8+5nRcKjKfMEUvSkpyv1sc4rA3AyTXSPWQ6f3WjNfMGu
         gqjwIhIiLzkukdMYVzSn60c1EfeiSMIGgt1zs9/Rr6UYn89kHboYRVvjhBA6Tso6eaqR
         3VscySpE+z6Q+VXo9JFdbrdG7FFlbCCYlIQyWcl6oYfbuj0MxxyjM8g/dI/hcGTOMx2h
         H4pw==
X-Gm-Message-State: ACrzQf0v+Sx5G7EppS4tCfiRR2giEj2hjHR8sBPTI5/tbCZcBEowuFl7
	6/VDiN+vVpk2mYABkLS+0HJbE6UyT4aNAv1khXY=
X-Google-Smtp-Source: AMsMyM6Y9zW6zpA4T8ZHHnNC32h6dXOzM3iXU64FXvn10v2xWFUT4q4TMqc3XT+4240HQYvt1z6bIY0FhvCMohwPHuw=
X-Received: by 2002:a05:6214:3011:b0:4b1:be7e:3f93 with SMTP id
 ke17-20020a056214301100b004b1be7e3f93mr1027074qvb.48.1664892552392; Tue, 04
 Oct 2022 07:09:12 -0700 (PDT)
MIME-Version: 1.0
References: <20221004134909.1692021-1-nuno.sa@analog.com> <20221004134909.1692021-14-nuno.sa@analog.com>
In-Reply-To: <20221004134909.1692021-14-nuno.sa@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 4 Oct 2022 17:08:35 +0300
Message-ID: <CAHp75VfmMWonUV1jahbAmBZJixfdxA=ZAm-NNt7XiO+RDbupyg@mail.gmail.com>
Subject: Re: [PATCH v2 13/16] iio: core: introduce iio_device_{claim|release}_buffer_mode()
 APIs
To: =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc: linux-amlogic@lists.infradead.org, linux-imx@nxp.com, 
	linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Neil Armstrong <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, 
	Hans de Goede <hdegoede@redhat.com>, 
	Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Cixi Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam <festevam@gmail.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Alexandru Ardelean <aardelean@deviqon.com>, 
	Florian Boor <florian.boor@kernelconcepts.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Chen-Yu Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Kevin Hilman <khilman@baylibre.com>, Jonathan Cameron <jic23@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_070916_219700_DFFE46A6 
X-CRM114-Status: GOOD (  11.41  )
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

T24gVHVlLCBPY3QgNCwgMjAyMiBhdCA0OjQ5IFBNIE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5j
b20+IHdyb3RlOgo+Cj4gVGhlc2UgQVBJcyBhcmUgYW5hbG9nb3VzIHRvIGlpb19kZXZpY2VfY2xh
aW1fZGlyZWN0X21vZGUoKSBhbmQKPiBpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0X21vZGUoKSBi
dXQsIGFzIHRoZSBuYW1lIHN1Z2dlc3RzLCB3aXRoIHRoZQo+IGxvZ2ljIGZsaXBwZWQuIFdoaWxl
IHRoaXMgbG9va3Mgb2RkIGVub3VnaCwgaXQgd2lsbCBoYXZlIGF0IGxlYXN0IHR3bwo+IHVzZXJz
IChpbiBmb2xsb3dpbmcgY2hhbmdlcykgYW5kIGl0IHdpbGwgYmUgaW1wb3J0YW50IHRvIG1vdmUg
dGhlIGlpbwo+IG1sb2NrIHRvIHRoZSBwcml2YXRlIHN0cnVjdC4KCi4uLgoKPiAraW50IGlpb19k
ZXZpY2VfY2xhaW1fYnVmZmVyX21vZGUoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKPiArewo+
ICsgICAgICAgbXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwo+ICsgICAgICAgaWYg
KGlpb19idWZmZXJfZW5hYmxlZChpbmRpb19kZXYpKQoKRG8geW91IG5lZWQgdG8gYW5ub3RhdGUg
dGhlc2UgdHdvIEFQSXMgdG8gbWFrZSBzcGFyc2UgaGFwcHkgYWJvdXQKbG9ja2luZyBiYWxhbmNl
PwoKKFRyeSB0byBydW4gYG1ha2UgVz0xIEM9MSAuLi5gIHdpdGggeW91ciBwYXRjaGVzIGFuZCBs
b29rIGlmIGFueSBuZXcKd2FybmluZ3MgYXBwZWFyLikKCj4gKyAgICAgICAgICAgICAgIHJldHVy
biAwOwo+ICsKPiArICAgICAgIG11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKyAg
ICAgICByZXR1cm4gLUVCVVNZOwo+ICt9CgouLi4KCj4gK3ZvaWQgaWlvX2RldmljZV9yZWxlYXNl
X2J1ZmZlcl9tb2RlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCj4gK3sKPiArICAgICAgIG11
dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gK30KCi0tIApXaXRoIEJlc3QgUmVnYXJk
cywKQW5keSBTaGV2Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
