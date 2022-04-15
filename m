Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10934C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 11:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QC+tMi+yfqEecC2uJcAl6uzZ7KrMqDp0dHWo7h7yTzE=; b=g2d45WM3PIXC1o
	AXkAgUPPqHa3NbNUFd0uweON+Q2Gy6x7bhPb2rKRi/wsZWhLC/7HzLmXX8dlQ1/OxGDtPJMYs4nsz
	4PiPOevunT15gHhOH5HorZ9Mz6ndKz4YTiXpQ9u8vZeiOtkEBM+gYi7+RTsjxW5cCe0yHX85dx7yF
	nsFZ0nSKgQkJEJ3zFnX9ZXXc95P+MuL6GqUFtXGZUnjGsyLxZ/v8fVGpJy9tL65PcNb64OfszsnaY
	ZPXt0xIw6/HWtR9glxY7E5ShGGefwUPZI7xQ4MXYduim5TpLuASi7RFuiXpqyYIpIY/Lpa3nJGpz5
	qiKG3T/WaMYDbQBhlOJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfJrb-009lXI-GV; Fri, 15 Apr 2022 11:11:43 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfJrX-009lV6-IZ; Fri, 15 Apr 2022 11:11:41 +0000
Received: by mail-lf1-x129.google.com with SMTP id t25so13548992lfg.7;
 Fri, 15 Apr 2022 04:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=8rKWtpqqPYYEzbZqAeN0/yV6I0K22SlsHKssE8lnJN8=;
 b=pDHtljXSqA2HodN7HlG9y1B6GuMhsGZLlJlcQxYhLqTRpqtwwwIiwZkqkDt+BtbyUa
 6eRkeCSVa3ae11sqFhXiYTh+8Xzc2OzqBoCgVrGPCqzk5rfM0bD6B0B0NMucrOBNfeTm
 C0nSat3ITXMgyD+l2uohx8g0p5x5aiawkiwckJPuWEPp2xj+lkaIUpmHpRKrOOjYGucH
 udN3Dr5Uj5713A6k95503LUwavhxTkAg/sinqN+adya0s3DcIe2IYE1wxcIb2drIsPax
 299KRPW0MDSW+XDgsYOsQCOeEKdVI0zeB+ksQNJdhbb482AruEYHDm4Xf9Z/rV3b9KF7
 4x0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=8rKWtpqqPYYEzbZqAeN0/yV6I0K22SlsHKssE8lnJN8=;
 b=URMs0iofrAE8bLq3EehNUiGVYDSEHjA/3xubW+OZDypvjvY2djUcrLT7oKNgDqQq4u
 Bl5LoMrnayQUN6qxEElG3KNqd2zaTN6NTt45T3rHbRJeDGOJ/QJDFGP6fPHEP4y/M7El
 PyC2TfjLXS0mRpsJFLsQm27qAxP+R5rTYjWpniNbz3rKsUGsRtWeMlmIOMSmNfeIfOsH
 sMmc2f6eHJ9JX0TVIq74WDQWCW/JIpaPwUyN3PHxCxdiZ/Ec1E0el0XYb0wCWTbm6H5y
 69JgpsBkiUSjwPs5uLqNMNdaUOr+gGfLVNSdeI6aTHe7Z+L0CySgo3ggSeq02a+JUyk6
 JAKQ==
X-Gm-Message-State: AOAM531HFjnN6Pvn7o+YAjEjKp/QMu0NHfbNKI7MNBBKTDOyIt9I4ju6
 NID5D9jeYFVx8sxo4zVEcCg=
X-Google-Smtp-Source: ABdhPJxbKlylx4tyVwT8241mw9KFsamD4RsvG/OQBJ3XGgGjiFSEPufVIE5jgl5DuiHaSAE+Zmp23w==
X-Received: by 2002:a05:6512:1188:b0:44a:3457:3a0b with SMTP id
 g8-20020a056512118800b0044a34573a0bmr4827072lfr.427.1650021095018; 
 Fri, 15 Apr 2022 04:11:35 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 25-20020ac24d59000000b0046d06f31bc2sm293850lfp.282.2022.04.15.04.11.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Apr 2022 04:11:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAPj87rNatQ9KjDSnYQTh4+FOUcPTerbzH3m8AuAF_BPbM1xxGg@mail.gmail.com>
Date: Fri, 15 Apr 2022 13:11:32 +0200
Cc: Lucas Stach <l.stach@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Lucas Stach <lst@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Message-Id: <EE789168-EEFD-4231-96D5-9E62AED6D08C@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
 <20220411090800.GR4012@pengutronix.de>
 <5929E7A7-776E-4BCB-92C8-A1CE05774FE3@gmail.com>
 <20220412075034.GS4012@pengutronix.de>
 <e2ef484b60fe9c5fc077240a26bd18275974dc4a.camel@pengutronix.de>
 <EF0F8E87-2618-4E5E-807D-259FEEC0FB24@gmail.com>
 <CAPj87rNatQ9KjDSnYQTh4+FOUcPTerbzH3m8AuAF_BPbM1xxGg@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_041139_691484_E17B2D40 
X-CRM114-Status: GOOD (  18.13  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERhbmllbCBTdG9uZSA8ZGFuaWVsQGZvb2lz
aGJhci5vcmc+IHcgZG5pdSAxMi4wNC4yMDIyLCBvIGdvZHouIDEzOjMwOgo+IAo+PiBUZXN0aW5n
IFNhY2hhIHBhdGNoIChzZWUgdG9kYXkncyBlbWFpbCBmcm9tIFNhc2NoYSkgaSdtIGdldHRpbmcK
Pj4gCj4+IFF0OiBFR0wgRXJyb3IgOiBDb3VsZCBub3QgY3JlYXRlIHRoZSBlZ2wgc3VyZmFjZTog
ZXJyb3IgPSAweDMwMDkKPj4gCj4+IGknbSByZWFkaW5nIHRoaXMgYXM6IFF0IHRyaWVzIGFsbG9j
YXRlIEVHTCBzdXJmYWNlIGFuZCBFR0wgcmV0dXJucyBlcnJvci4KPj4gb3IgaSdtIHdyb25nPwo+
IAo+IENvcnJlY3QsIHRoYXQncyBFR0xfQkFEX01BVENILiBUaGVyZSBhcmUgdmVyeSBmZXcgd2F5
cyB0aGF0IGNhbgo+IGhhcHBlbjsgYnkgZmFyIHRoZSBtb3N0IGxpa2VseSBpcyB0aGF0IFF0IGhh
cyBjaG9zZW4gYW4gRUdMQ29uZmlnCj4gd2hpY2ggZG9lcyBub3QgY29ycmVjdGx5IGNvcnJlc3Bv
bmQgdG8gdGhlIGZvcm1hdC4gKElmIGl0IHdhcyBhbgo+IGltcG9zc2libGUgZm9ybWF0L21vZGlm
aWVyIGNvbWJpbmF0aW9uLCB0aGVuIHRoaXMgd291bGQgYmUgYWxyZWFkeQo+IGNhdWdodCB3aGVu
IGFsbG9jYXRpbmcgdGhlIGdibV9zdXJmYWNlLikKPiAKPiBFaXRoZXIgd2F5LCBpdCBzZWVtcyBx
dWl0ZSBjbGVhciB0aGF0IHRoZSBWT1AyIGRyaXZlciBpcyB0b3RhbGx5IGZpbmUKPiBoZXJlLCBh
bmQgdGhhdCB5b3UgaGF2ZSBhIFF0IChsaWtlbHkpIG9yIE1lc2EgKHRiaCBsZXNzIGxpa2VseSkg
aXNzdWUKPiB0byBkZWJ1ZyB0byBnZXQgdGhlIGFwcCB3b3JraW5nLgo+IAo+IENoZWVycywKPiBE
YW5pZWwKClRoeCBEYW5pZWwhCgpJbmRlZWQgLSB0aGlzIGlzIHByb2JhYmx5IGFub3RoZXIgY2Fz
ZSB3aGVyZSBJIHNlZTogd3JpdGluZyBEUk0gcGxhbmVzIHJlbmRlcmluZyBtZWRpYXBsYXllciB3
aXRoIGhlbHAgb2YgUXQgaXMgKHRvbyljb3JuZXIgY2FzZSBmb3IgUXQuLi4uCgoKQGFsbAoKTG9v
a2luZyBvbiBRdCBzb3VyY2VzIGl0IGxvb2tzIHRvIG1lIHRoaXMgZm9ybWF0IHNob3VsZCBiZSBz
dXBwb3J0ZWQ6CgpodHRwczovL2NvZGUucXQuaW8vY2dpdC9xdC9xdGJhc2UuZ2l0L3RyZWUvc3Jj
L3BsYXRmb3Jtc3VwcG9ydC9rbXNjb252ZW5pZW5jZS9xa21zZGV2aWNlLmNwcD9oPTUuMTUuMiNu
MzgwCgpJbnRlcmVzdGluZyB0aGF0IHdpdGggY3VzdG9tIFF0IGNvbmZpZzE6ICJmb3JtYXQiOiAi
YXJnYjg4ODgiLApEUkkgc3RhdGUgc2hvd3M6IGZvcm1hdD1BUjI0IGxpdHRsZS1lbmRpYW4gKDB4
MzQzMjUyNDEpCgpVSSBpcyBPSywgcGxheWJhY2sgaXMgT0suIE9TRCBub3QgdmlzaWJsZSAoKikK
CmN1c3RvbSBjb25maWcyOiAiZm9ybWF0IjogImFiZ3I4ODg4IiAKUXQgY3Jhc2hlcyB3aXRoIEVH
TF9CQURfTUFUQ0gKClNvIGl0IGxvb2tzIGZvcmNpbmcgc29tZSBRdCBmb3JtYXRzIHdvcmtzIHdo
aWxlIG90aGVyIC0gbm90LiAKCkxvb2tpbmcgd2h5IHRoaXM6CgpRdCBsb2dnaW5nIHNheXMgbm90
aGluZy4KZXhwb3J0IE1FU0FfREVCVUc9MSBnaXZlcyBubyBhbnkgbWVzc2FnZS4gSSdtIGEgbG9z
dCBoZXJlIGEgYml0Li4uCgoKCkJ1dCBmcm9tIGEgYml0IG1vcmUgZGlzdGFudCBwZXJzcGVjdGl2
ZToKCjEuIFNhc2NoYSBjb25jbHVkZXMgaW4gKCopIHRoYXQgaXNzdWUgaXMgbW9zdCBwcm9iYWJs
eSBpbiBmb3JtYXQgbmVnb3RpYXRpb24gYnkgYXBwLgoKMi4gaW1obyBhcHAgcHJvYmFibHkgY29y
cmVjdGx5IG5lZ290aWF0ZXMgYWNjb3JkaW5nbHkgdG8gaW5wdXRzIGl0IGdldHMgZnJvbSBwcm92
aWRlcnMgKERSTSkgYW5kIGNsaWVudHMgKG1lc2EpLiAKVGVzdCB3aXRoIHBhdGNoIGV4Y2x1ZGlu
ZwpEUk1fRk9STUFUX1hSR0I4ODg4LApEUk1fRk9STUFUX0FSR0I4ODg4LApzaG93cyBpbWhvIHBy
b3BlciBhcHAgcmVhY3Rpb24gb24gdGhpcyAobmV3IGZvcm1hdCBlbGVjdGVkOyBidXQgUXQgZmFp
bHMgd2l0aCB0aGlzIGZvcm1hdCkuIEluZGlyZWN0bHkgaSBjb25jbHVkZSBhcHAgbG9naWMgaXMg
b2suLi4uCgozLiBTdW0gb2YgcDEgJiBwMiB0ZWxscyBtZToKaSBuZWVkIHRvIGFkZCBleHRyYSBs
b2dpYyBpbiBmb3JtYXQgZWxlY3Rpb24gdG8gc3BlY2lmaWNhbGx5IGRlYWwgd2l0aCBjb25zdHJh
aW5zIG9mIHJrMzU2eCAoc2VlIGV4cGxhbmF0aW9uIGluICgqKSkKICAgIAo0LiBFdmVuIGlmIGkg
aW1wbGVtZW50IHAzIC0gdGhlbiB1c2VyIHdvcmxkIC0gKHRoaXMgdXNpbmcgUXQpIC0gd2lsbCBi
ZSBub3QgaGFwcHkgYXM6Ci0gbWFqb3JpdHkgdXNlcnMgYXJlIHVzaW5nIHByZS1idWlsZCBRdAot
IEkgZG9uJ3QgYmVsaWV2ZSBUcm9sbHRlY2ggd2lsbCBmaXggdGhpcyBzb29uCgpTbyBpIHNlZSBm
b2xsb3dpbmcgcGF0aDoKICAKd2Ugd2lsbCB2ZXJpZnkgaXMgaXNzdWUgb2YgUXQgd2l0aCBhYmdy
ODg4OCBhbiBRdCByb290IGNhdXNlIGlzc3VlLAoKSWYgWWVzIC0gdGhlbjoKCS0gSW52ZXN0aWdh
dGUgaXMgdGhlcmUgcmVhc29uYWJsZSB3YXkgdG8gd29ya2Fyb3VuZCB3aXRoIHRoaXMgb3V0c2lk
ZSBvZiBRdD8KSWYgbm90IC0gdGhlbjoKCS0gY29uY2x1ZGU6IHZvcDIgLSBkdWUgUXQgYnVnIC0g
d2lsbCBub3Qgd29yayBvayB3aXRoIFF0IHVudGlsIFF0IHdpbGwgYmUgZml4ZWQuCgogCklmIHlv
dSB0aGluayB0aGlzIG1ha2Ugc2Vuc2UgLSBpIG5lZWQgc29tZSBoZWxwIHdpdGg6IHZlcmlmeSBp
cyBpc3N1ZSBvZiBRdCB3aXRoIGFiZ3I4ODg4IGFuIFF0IHJvb3QgY2F1c2UgaXNzdWUKCmxldCBt
ZSBrbm93IHdoYXQgeW91IHRoaW5rCgoKCigqKQpTYXNjaGEgbWVudGlvbmVkOgo+IFNvbWVob3cg
bmVnb3RpYXRpb24gb2YgdGhlIGZvcm1hdCBnb2VzIHdyb25nLiBBcHBsaWNhdGlvbnMgc2hvdWxk
bid0Cj4gcGljayB0aGVzZSBmb3JtYXRzIHdoZW4gdGhlIEdQVSBpcyB1c2VkIGZvciByZW5kZXJp
bmcuIEkgZG9uJ3Qga25vdyBob3cKPiBhbmQgd2hlcmUgdGhpcyBzaG91bGQgYmUgZml4ZWQgcHJv
cGVybHksIGJ1dCB5b3VyIGFwcGxpY2F0aW9uIHNob3VsZCB1c2UKPiBEUk1fRk9STUFUX0FCR1I4
ODg4IGFrYSBBQjI0IGFrYSBQSVBFX0ZPUk1BVF9SOEc4QjhBOF9VTk9STSBpbnN0ZWFkIG9mCj4g
RFJNX0ZPUk1BVF9BUkdCODg4OCBha2EgQVIyNCBha2EgUElQRV9GT1JNQVRfQjhHOFI4QThfVU5P
Uk0uCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
