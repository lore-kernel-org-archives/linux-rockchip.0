Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F5CC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 08:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyN0EOHXiQsUzBj9p3HiKsNb5OWKohlMW3qv096dmPQ=; b=oaqmN3yq/+NJ+0
	ZBJ0J6cTcdOe0SfaD/DNwn53rdxMNe3Bgy8D7lH1o0Oget2s9LHhL7WNuln8rOjoqq4b0R4L6V3NW
	AfMTjN2TN68hLOTmyLSEChqWoaMuAiBRCv8lBTpBPicknYXJyxEvNpqVhnb2y77PWg56T1/dPcNCX
	ypZgOB1JpYGOOEhes5rWwAbBpQw2n6zs2Zwup79Ag5E4WVVRxtBLc4j3GinYmJjGjcESlV2EJoDSo
	RJ0M8OuuVtt8nVdUJU0Pc+J8xM7QKuceL0uAv5Mbiyh9IGxdbudaX4VneeQHQbmF8QLhktFVwgL7s
	mX55WPpzzcqZ05YwUBeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofztK-00D4xZ-UM; Wed, 05 Oct 2022 08:36:34 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofzt9-00D4tb-PV; Wed, 05 Oct 2022 08:36:25 +0000
Received: by mail-qt1-x834.google.com with SMTP id y20so1338395qtv.5;
        Wed, 05 Oct 2022 01:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=4yc2ManKI3PnZHl6D22lOOBNCms+IQgL/VUKb/ICEEY=;
        b=k3WIqDF57Vvae0mBn1OwAGPYLXdLq/9KxmaStFTtzdetMnkTBOr+TSHx1zA0idUE6/
         /zioDi9N8NXZBSr7ROkVLBahdePDBgw56YkwzK9kCeHNLqijBXQof32Biw/wS+0CkHZ3
         UfQecVco3TBJIQk3xGSs3PDTtzBP3EiaN8UZ27uVrqT1k+ULfITNAUqeoiSkKsWVclc3
         +2ZxKmFVbAlfop4jsaHkXzdV0Qs18fPRM6Xq+YnAKc6BmPsqu1rCAzhwuy3hJqViPGbN
         H9zZImsxCV9H3wmbTbO0aFsXmBjiIsgU3SoeF9sUNIx1KExak7DQiJOn5Ffo5tLOfAkI
         /NMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=4yc2ManKI3PnZHl6D22lOOBNCms+IQgL/VUKb/ICEEY=;
        b=IuwJsTWUjqQ8Eo0j5wkwBPZVAILYmgpvH9pnyy5khYurF8h6H9AyDXtbd8nAgdjyMh
         laNd69wK3FtgYTik/9lIDif6ayXO4R0c+Dlvfb6xftaqY5sinmbk2Wlqd2DWvlsZ7zwF
         0FgZRVH+OlCC2P4a5fyMfiJI6hSDNB++gbFZWc7625QThwuNytPlHtxKScxrV2b1xCAY
         oGcERfttS2hG7CpGFIgoHR/4qQJxahWIv4loAQH9lfeIdxSG83tZNuVIoXQOalp0LdVg
         7YqJK4HmUvbP4Cp1gOUFHcbKHK6BIoX1SkGBdnpgGmFiPshhryWZwZ24c2+lWfiHOmsa
         6I9w==
X-Gm-Message-State: ACrzQf2O9bqqYLFWs2kojpjTivKsqj3YLs2HNt23w0N0rnJUO+8Q5Tif
	X2WP28V0LemhfPU46PYq2FE=
X-Google-Smtp-Source: AMsMyM7YhR4mT2T8jkP88VsfBjDaKhiJx1QVUwb6XT51xZ3yYitgB7ulQA2cbACPeldCXQSGlQtQ9A==
X-Received: by 2002:a05:622a:652:b0:38f:1b14:3e6d with SMTP id a18-20020a05622a065200b0038f1b143e6dmr2653358qtb.152.1664958981646;
        Wed, 05 Oct 2022 01:36:21 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id g4-20020ac81244000000b0039014fd4b9bsm1314649qtj.47.2022.10.05.01.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 01:36:20 -0700 (PDT)
Message-ID: <609d7e50d76a2a2aa2bbaddfed8a846c91854065.camel@gmail.com>
Subject: Re: [PATCH v2 13/16] iio: core: introduce
 iio_device_{claim|release}_buffer_mode() APIs
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>, Nuno =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>
Cc: linux-amlogic@lists.infradead.org, linux-imx@nxp.com, 
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, Hans de
 Goede <hdegoede@redhat.com>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, Cixi
 Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam
 <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandru
 Ardelean <aardelean@deviqon.com>,  Florian Boor
 <florian.boor@kernelconcepts.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen
 <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>, Jonathan Cameron
 <jic23@kernel.org>
Date: Wed, 05 Oct 2022 10:37:39 +0200
In-Reply-To: <CAHp75VfmMWonUV1jahbAmBZJixfdxA=ZAm-NNt7XiO+RDbupyg@mail.gmail.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	 <20221004134909.1692021-14-nuno.sa@analog.com>
	 <CAHp75VfmMWonUV1jahbAmBZJixfdxA=ZAm-NNt7XiO+RDbupyg@mail.gmail.com>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_013623_860509_0B50FCE7 
X-CRM114-Status: GOOD (  14.70  )
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

T24gVHVlLCAyMDIyLTEwLTA0IGF0IDE3OjA4ICswMzAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6
Cj4gT24gVHVlLCBPY3QgNCwgMjAyMiBhdCA0OjQ5IFBNIE51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgo+ID4gCj4gPiBUaGVzZSBBUElzIGFyZSBhbmFsb2dvdXMgdG8gaWlvX2Rl
dmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpIGFuZAo+ID4gaWlvX2RldmljZV9yZWxlYXNlX2RpcmVj
dF9tb2RlKCkgYnV0LCBhcyB0aGUgbmFtZSBzdWdnZXN0cywgd2l0aAo+ID4gdGhlCj4gPiBsb2dp
YyBmbGlwcGVkLiBXaGlsZSB0aGlzIGxvb2tzIG9kZCBlbm91Z2gsIGl0IHdpbGwgaGF2ZSBhdCBs
ZWFzdAo+ID4gdHdvCj4gPiB1c2VycyAoaW4gZm9sbG93aW5nIGNoYW5nZXMpIGFuZCBpdCB3aWxs
IGJlIGltcG9ydGFudCB0byBtb3ZlIHRoZQo+ID4gaWlvCj4gPiBtbG9jayB0byB0aGUgcHJpdmF0
ZSBzdHJ1Y3QuCj4gCj4gLi4uCj4gCj4gPiAraW50IGlpb19kZXZpY2VfY2xhaW1fYnVmZmVyX21v
ZGUoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKPiA+ICt7Cj4gPiArwqDCoMKgwqDCoMKgIG11
dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoCBpZiAo
aWlvX2J1ZmZlcl9lbmFibGVkKGluZGlvX2RldikpCj4gCj4gRG8geW91IG5lZWQgdG8gYW5ub3Rh
dGUgdGhlc2UgdHdvIEFQSXMgdG8gbWFrZSBzcGFyc2UgaGFwcHkgYWJvdXQKPiBsb2NraW5nIGJh
bGFuY2U/Cj4gCj4gKFRyeSB0byBydW4gYG1ha2UgVz0xIEM9MSAuLi5gIHdpdGggeW91ciBwYXRj
aGVzIGFuZCBsb29rIGlmIGFueSBuZXcKPiB3YXJuaW5ncyBhcHBlYXIuKQoKbWFrZSBXPTEgQz0x
IGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1jb3JlLm8KIyAgVVBEICAgICBpbmNsdWRlL2NvbmZp
Zy9rZXJuZWwucmVsZWFzZQogIFVQRCAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvdXRzcmVsZWFzZS5o
CiAgQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRv
bWljL2NoZWNrLWF0b21pY3Muc2gKICBDQyAgICAgIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1j
b3JlLm8KICBDSEVDSyAgIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1jb3JlLmMKZHJpdmVycy9p
aW8vaW5kdXN0cmlhbGlvLWNvcmUuYzogbm90ZTogaW4gaW5jbHVkZWQgZmlsZSAodGhyb3VnaApp
bmNsdWRlL2xpbnV4L2JpdG9wcy5oLCBpbmNsdWRlL2xpbnV4L2tlcm5lbC5oKToKLi9pbmNsdWRl
L2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDozMDo5OiB3YXJuaW5nOgp1
bnJlcGxhY2VkIHN5bWJvbCAnbWFzaycKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5l
cmljLW5vbi1hdG9taWMuaDozMTo5OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAncCcKLi9p
bmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDozMzoxMDogd2Fy
bmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ3AnCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMv
Z2VuZXJpYy1ub24tYXRvbWljLmg6MzM6MTY6IHdhcm5pbmc6CnVucmVwbGFjZWQgc3ltYm9sICdt
YXNrJwouL2luY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5oOjI4
OjE6IHdhcm5pbmc6CnVucmVwbGFjZWQgc3ltYm9sICdyZXR1cm4nCi4vaW5jbHVkZS9hc20tZ2Vu
ZXJpYy9iaXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6Mzk6OTogd2FybmluZzoKdW5yZXBsYWNl
ZCBzeW1ib2wgJ21hc2snCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJpYy1ub24t
YXRvbWljLmg6NDA6OTogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ3AnCi4vaW5jbHVkZS9h
c20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6NDI6MTA6IHdhcm5pbmc6CnVu
cmVwbGFjZWQgc3ltYm9sICdwJwouL2luY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMt
bm9uLWF0b21pYy5oOjQyOjE2OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAnbWFzaycKLi9p
bmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDozNzoxOiB3YXJu
aW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAncmV0dXJuJwouL2luY2x1ZGUvYXNtLWdlbmVyaWMvYml0
b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5oOjU3Ojk6IHdhcm5pbmc6CnVucmVwbGFjZWQgc3ltYm9s
ICdtYXNrJwouL2luY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5o
OjU4Ojk6IHdhcm5pbmc6CnVucmVwbGFjZWQgc3ltYm9sICdwJwouL2luY2x1ZGUvYXNtLWdlbmVy
aWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5oOjYwOjEwOiB3YXJuaW5nOgp1bnJlcGxhY2Vk
IHN5bWJvbCAncCcKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9t
aWMuaDo2MDoxNTogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ21hc2snCi4vaW5jbHVkZS9h
c20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6NTU6MTogd2FybmluZzoKdW5y
ZXBsYWNlZCBzeW1ib2wgJ3JldHVybicKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5l
cmljLW5vbi1hdG9taWMuaDo3NTo5OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAnbWFzaycK
Li9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDo3Njo5OiB3
YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAncCcKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9w
cy9nZW5lcmljLW5vbi1hdG9taWMuaDo3Nzo5OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAn
b2xkJwouL2luY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5oOjc5
OjEwOiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAncCcKLi9pbmNsdWRlL2FzbS1nZW5lcmlj
L2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDo3OToxNDogd2FybmluZzoKdW5yZXBsYWNlZCBz
eW1ib2wgJ29sZCcKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9t
aWMuaDo3OToyMDogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ21hc2snCi4vaW5jbHVkZS9h
c20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6ODA6MTc6IHdhcm5pbmc6CnVu
cmVwbGFjZWQgc3ltYm9sICdvbGQnCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJp
Yy1ub24tYXRvbWljLmg6ODA6MjM6IHdhcm5pbmc6CnVucmVwbGFjZWQgc3ltYm9sICdtYXNrJwou
L2luY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5oOjgwOjk6IHdh
cm5pbmc6CnVucmVwbGFjZWQgc3ltYm9sICdyZXR1cm4nCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9i
aXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6NzM6MTogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1i
b2wgJ3JldHVybicKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9t
aWMuaDo5NTo5OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAnbWFzaycKLi9pbmNsdWRlL2Fz
bS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDo5Njo5OiB3YXJuaW5nOgp1bnJl
cGxhY2VkIHN5bWJvbCAncCcKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5v
bi1hdG9taWMuaDo5Nzo5OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAnb2xkJwouL2luY2x1
ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5oOjk5OjEwOiB3YXJuaW5n
Ogp1bnJlcGxhY2VkIHN5bWJvbCAncCcKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5l
cmljLW5vbi1hdG9taWMuaDo5OToxNDogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ29sZCcK
Li9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDo5OToyMTog
d2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ21hc2snCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9i
aXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6MTAwOjE3OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5
bWJvbCAnb2xkJwouL2luY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21p
Yy5oOjEwMDoyMzogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ21hc2snCi4vaW5jbHVkZS9h
c20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6MTAwOjk6IHdhcm5pbmc6CnVu
cmVwbGFjZWQgc3ltYm9sICdyZXR1cm4nCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvZ2Vu
ZXJpYy1ub24tYXRvbWljLmg6OTM6MTogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ3JldHVy
bicKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDoxMDc6
OTogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ21hc2snCi4vaW5jbHVkZS9hc20tZ2VuZXJp
Yy9iaXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6MTA4Ojk6IHdhcm5pbmc6CnVucmVwbGFjZWQg
c3ltYm9sICdwJwouL2luY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21p
Yy5oOjEwOTo5OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAnb2xkJwouL2luY2x1ZGUvYXNt
LWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5oOjExMToxMDogd2FybmluZzoKdW5y
ZXBsYWNlZCBzeW1ib2wgJ3AnCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJpYy1u
b24tYXRvbWljLmg6MTExOjE0OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJvbCAnb2xkJwouL2lu
Y2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5oOjExMToyMDogd2Fy
bmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ21hc2snCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRv
cHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6MTEyOjE3OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5bWJv
bCAnb2xkJwouL2luY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5o
OjExMjoyMzogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ21hc2snCi4vaW5jbHVkZS9hc20t
Z2VuZXJpYy9iaXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6MTEyOjk6IHdhcm5pbmc6CnVucmVw
bGFjZWQgc3ltYm9sICdyZXR1cm4nCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJp
Yy1ub24tYXRvbWljLmg6MTA1OjE6IHdhcm5pbmc6CnVucmVwbGFjZWQgc3ltYm9sICdyZXR1cm4n
Ci4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6MTI4Ojk6
IHdhcm5pbmc6CnVucmVwbGFjZWQgc3ltYm9sICdyZXR1cm4nCi4vaW5jbHVkZS9hc20tZ2VuZXJp
Yy9iaXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6MTIxOjE6IHdhcm5pbmc6CnVucmVwbGFjZWQg
c3ltYm9sICdyZXR1cm4nCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvZ2VuZXJpYy1ub24t
YXRvbWljLmg6MTY4Ojk6IHdhcm5pbmc6CnVucmVwbGFjZWQgc3ltYm9sICdwJwouL2luY2x1ZGUv
YXNtLWdlbmVyaWMvYml0b3BzL2dlbmVyaWMtbm9uLWF0b21pYy5oOjE2OTo5OiB3YXJuaW5nOgp1
bnJlcGxhY2VkIHN5bWJvbCAnbWFzaycKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5l
cmljLW5vbi1hdG9taWMuaDoxNzA6OTogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ3ZhbCcK
Li9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDoxNzI6MTk6
IHdhcm5pbmc6CnVucmVwbGFjZWQgc3ltYm9sICd2YWwnCi4vaW5jbHVkZS9hc20tZ2VuZXJpYy9i
aXRvcHMvZ2VuZXJpYy1ub24tYXRvbWljLmg6MTcyOjI1OiB3YXJuaW5nOgp1bnJlcGxhY2VkIHN5
bWJvbCAnbWFzaycKLi9pbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9t
aWMuaDoxNzI6OTogd2FybmluZzoKdW5yZXBsYWNlZCBzeW1ib2wgJ3JldHVybicKLi9pbmNsdWRl
L2FzbS1nZW5lcmljL2JpdG9wcy9nZW5lcmljLW5vbi1hdG9taWMuaDoxNjY6MTogd2FybmluZzoK
dW5yZXBsYWNlZCBzeW1ib2wgJ3JldHVybicKZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWNvcmUu
YzoyMTAwOiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvcgppaW9fZGV2aWNlX2NsYWlt
X2J1ZmZlcmVkX21vZGUoKS4gUHJvdG90eXBlIHdhcyBmb3IKaWlvX2RldmljZV9jbGFpbV9idWZm
ZXJfbW9kZSgpIGluc3RlYWQKCkRvbid0IHJlYWxseSBzZWUgYW55dGhpbmcgb2RkIGluIGhlcmUu
Li4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8gCgpBbnl3YXlzLCBJIGd1ZXNzIHlvdSBtZWFuIGFu
bm90YXRpb25zIGFzIF9fYWNxdWlyZXMoKSBhbmQKX19yZWxlYXNlcygpLi4uIFdlbGwsIHRoaXMg
QVBJIGlzIHByZXR0eSBtdWNoIGFuYWxvZ291cyB0bwppaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9t
b2RlKCkgd2hpY2ggYWxzbyBkb24ndCBoYXZlIHN1Y2ggYW5ub3RhdGlvbnMuClRodXMsIEkgd291
bGQgc2F5IHRvIGFkZCB0aGVtIChpZiB3ZSBhcmUgZ29pbmcgdG9vKSBpbiBhIGZ1dHVyZSBwYXRj
aAp0byBib3RoIEFQSXMuLi4KCkFsc28gZmluZSB3aXRoIGFkZGluZyB0aGVtIG5vdyBpZiBKb25h
dGhhbiBmZWVscyBpdCdzIG5lY2Vzc2FyeS4KCi0gTnVubyBTw6EgCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
