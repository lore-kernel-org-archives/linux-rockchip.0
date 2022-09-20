Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93DCCC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 13:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnJP2dqZRIG0ziNP2EDgcfvXlvkGoK+FOUN7txnv5+E=; b=Bku8HBFMKy9p4S
	RCNIktYNlT2t6H8KJIrGOfnfGpVmvyrDcwpMoQEh9wqIm4a34iXx1bLvYNmuR10e/7SZGJ64tGsoK
	WU3ifUFIZXsFZi0Z2JoRK9iID61HC2jq2lo/gtwrwmxiH+OIXnik4H/YkEi8ZJPanXZMfOSLykVnP
	g2v48VxF1lXJxXwH6F9r5gbih8zrxKOe+n6rIrBZmiR5Zdo6wGgYfiXfe02kWtJYW8oEiwjFM9Z8c
	OTtwhoaxObhQOsCSUFw4hfC0ZhpHn0FFJzps5h0dzxB85My+K00DZKpEBQ+3dU0gvSMOHnrj7CQsx
	r0qEiLcqb2f15pquqNxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oad4o-003zUh-Bt; Tue, 20 Sep 2022 13:14:14 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oad4a-003zPM-NH; Tue, 20 Sep 2022 13:14:04 +0000
Received: by mail-qv1-xf30.google.com with SMTP id w4so1969954qvp.2;
        Tue, 20 Sep 2022 06:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=BHlaie6hylWMV8coBd5FIDUSQ9oG1Uphbsv015aZs/4=;
        b=dhNIARiESV6MyND7GWZFXhtWA4jq4Qay7x+tcorjQneVflX9NA4nkhEmxOaz9iIh4u
         6p9TBGmTfswxJiGL/pS/TfyVmKJmkP73qD4dVvYQjP0uvFObt0DclYjTKa3k1qe+UN0i
         6XiWp3jw/JUpctW6aAR/dyvS9mX2D5ssCKmbPbsDo//nRDNPTmwBZnguh2sveAHw2xDI
         ImsdLYJ8SPXNeRD9CZc/DMZCFu6j2D2oo9N5d/wXZgHEXAnVCbEGOOnGRrO8J0b6FcQ0
         up7t7CVx4H/+7yxQknO6m/306g+wrgO/GLKMMykOWJzpINEi/VMU6VvwKhKh+SjX+/41
         yLYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=BHlaie6hylWMV8coBd5FIDUSQ9oG1Uphbsv015aZs/4=;
        b=QKwzxPVoQJRrwubYD55xMXkTSMtclgUl/ktaNUfdvTdefu2UramS2orpI/3/jgZjij
         tioGoYFhvrzxe2ipdQoY4Q0Lpf3lZjCtfyXZ/DIPJzlE5zImVD88V1Qlt3SBd6LijdZe
         U41LARF1fhALIRjFajdf2kDKCEStel3Okggazg+v/ZN5++ndvWlhrcTIyWaq/X/qsok5
         E78ZTNlZ6DwmXMqG5ul2QbjAyirHuNG5DnN2oVo24R6HrRi6VXPmKA1AIn9WJYmZyhmn
         lJEFcsa9R4idFygJRl4fUn3tndN7VpcBI2ILRb4DyChkxIdtQzPfHZQkIzQ6zR4F/H1V
         nthg==
X-Gm-Message-State: ACrzQf2EC5zvNTbGA2eUB6ZMbxG7fnaJGCenDlyI6dfzFvJDQ7eLJ7ZZ
	T90rN0GPcEoB90b+R6rSVrf+Qf+zFpe49SqiFT4=
X-Google-Smtp-Source: AMsMyM56JXV/U4hiso6NAbUubkut0P6ri2M6qFySsSuc+BbVmLxrkRxw+GByxxcwzVFfwDyrKqMuP3Cm+4aDJqRNXkU=
X-Received: by 2002:a05:6214:d6f:b0:4ac:7748:2e5c with SMTP id
 15-20020a0562140d6f00b004ac77482e5cmr18616202qvs.97.1663679636472; Tue, 20
 Sep 2022 06:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220920112821.975359-1-nuno.sa@analog.com> <20220920112821.975359-4-nuno.sa@analog.com>
In-Reply-To: <20220920112821.975359-4-nuno.sa@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 20 Sep 2022 16:13:20 +0300
Message-ID: <CAHp75VeA48FbKy2uUjW4T19=Vn-UEznT7prkXZq4sdZ4Q9o-YA@mail.gmail.com>
Subject: Re: [PATCH 03/15] iio: adc: axp288_adc: do not use internal iio_dev lock
To: =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-imx@nxp.com, 
	linux-iio@vger.kernel.org, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman <khilman@baylibre.com>, 
	Vladimir Zapolskiy <vz@mleia.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Alexandru Ardelean <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, 
	Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Shawn Guo <shawnguo@kernel.org>, Hans de Goede <hdegoede@redhat.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Heiko Stuebner <heiko@sntech.de>, Florian Boor <florian.boor@kernelconcepts.de>, 
	Ciprian Regus <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Jonathan Cameron <jic23@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Jyoti Bhayana <jbhayana@google.com>, 
	Chen-Yu Tsai <wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_061402_347795_B00EEFBD 
X-CRM114-Status: UNSURE (   7.14  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgMjoyOCBQTSBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cu
Y29tPiB3cm90ZToKPgo+IFRoZSBpaW9fZGV2aWNlIGxvY2sgaXMgb25seSBtZWFudCBmb3IgaW50
ZXJuYWwgdXNlLiBIZW5jZSBkZWZpbmUgYQo+IGRldmljZSBsb2NhbCBsb2NrIHRvIHByb3RlY3Qg
YWdhaW5zdCBjb25jdXJyZW50IGFjY2Vzc2VzLgoKLi4uCgo+ICAgICAgICAgaW5mbyA9IGlpb19w
cml2KGluZGlvX2Rldik7Cj4gKyAgICAgICBtdXRleF9pbml0KCZpbmZvLT5sb2NrKTsKPiAgICAg
ICAgIGluZm8tPmlycSA9IHBsYXRmb3JtX2dldF9pcnEocGRldiwgMCk7Cj4gICAgICAgICBpZiAo
aW5mby0+aXJxIDwgMCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIGluZm8tPmlycTsKCkNvbnNp
ZGVyIGluaXRpYWxpemluZyBpdCBhcyBsYXRlIGFzIHBvc3NpYmxlLCBsaWtlIGFmdGVyIElSUSBy
ZXRyaWV2YWwKaW4gdGhpcyBjb250ZXh0IChtYXliZSBldmVuIGRlZXBlciwgYnV0IG5vIGNvbnRl
eHQgYXZhaWxhYmxlKS4gRGl0dG8KZm9yIHRoZSByZXN0IG9mIHRoZSBzZXJpZXMuCgotLSAKV2l0
aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
