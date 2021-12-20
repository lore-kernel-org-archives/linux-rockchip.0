Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13210C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 11:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWNRhCWgP6YSO90qJayTVbNSw9LuNWsrfSVgcFYspdQ=; b=ORYdhNvvHls7Vj
	d5mJ2Y8K4o6YCH03W2ls8FEhhUtkkJ08CFwT2aIyOjFvuVEsbGWdTByb4H5t5TCPNG7u+lOES2uEH
	sZ5BazCRh7NA/ph/iiQGOye0VG9voKsfiuieOFXFtVrFMVmSW2hRlJ4DkpycR1jAwM0CMZYwLhfiG
	iSo/h2G0Cpp3eRSyMsZuA48vcSbM0uERhojuk/7kRL/KRdrC+6SjCZEQO0KDSjA79dsiICwSQ6l8T
	fmKKJGHNq4KCl16u8AERer8VL5qjD4abuvCefGtk0pJ+ZJhg0u98DKPg3p8yRC+s7tjB5IgvzCxgI
	/WmfchfHWbc0tGCitmUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzHFf-0027Uj-Cx; Mon, 20 Dec 2021 11:54:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzHFW-0027Qj-BE
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 11:54:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 810CB1042;
 Mon, 20 Dec 2021 03:54:37 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B62823F718;
 Mon, 20 Dec 2021 03:54:35 -0800 (PST)
Message-ID: <320d0e55-0202-a7cf-a021-f9a49e0e2f66@arm.com>
Date: Mon, 20 Dec 2021 11:54:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH v2] mfd: rk808: add reboot support to rk808.c
Content-Language: en-GB
To: Peter Geis <pgwipeout@gmail.com>, Dmitry Osipenko <digetx@gmail.com>
Cc: Lee Jones <lee.jones@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20211217145544.341617-1-pgwipeout@gmail.com>
 <2bebe0ae-27df-f75d-97d6-2e4d2dd032b0@gmail.com>
 <CAMdYzYq=2G1bvu9M_DR0vdQDtcvVBhQFRPTNKo1ySFrMZOk=jg@mail.gmail.com>
 <4d24cb08-0475-3a9d-1b73-24e465f34701@gmail.com>
 <CAMdYzYrDp5zcRJ=TudtiAtviJVMyNmqB5TMNYZ=XN+mb3paSTQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAMdYzYrDp5zcRJ=TudtiAtviJVMyNmqB5TMNYZ=XN+mb3paSTQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_035438_466356_91DEC2D0 
X-CRM114-Status: GOOD (  10.33  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMS0xMi0xNyAxODo0MiwgUGV0ZXIgR2VpcyB3cm90ZToKPiBPbiBGcmksIERlYyAxNywg
MjAyMSBhdCAxOjMwIFBNIERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4gd3JvdGU6
Cj4+Cj4+IDE3LjEyLjIwMjEgMjE6MTYsIFBldGVyIEdlaXMg0L/QuNGI0LXRgjoKPj4+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+Pj4+PiArICAgICAgICAgICAgIGRlZmF1bHQ6Cj4+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfaW5mbygmY2xpZW50LT5kZXYsICJwbWljIGNv
bnRyb2xsZWQgYm9hcmQgcmVzZXQgbm90IHN1cHBvcnRlZFxuIik7Cj4+Cj4+IEknZCBjaGFuZ2Ug
dGhpcyBkZXZfaW5mbyB0byBkZXZfZGJnIHRvIG5vdCBjbHV0dGVyIEtNU0cuCj4gCj4gSSdkIHBy
ZWZlciB0byBsZWF2ZSB0aGlzIGFzIGluZm8sIHNpbmNlIHRoZSBkZXZpY2UgaXMgZGVzaWduYXRl
ZCBhcwo+IHRoZSBzeXN0ZW0gcG93ZXIgY29udHJvbGxlciBidXQgaXQgaXMgb25seSBjYXBhYmxl
IG9mIHBvd2VyaW5nIGRvd24KPiB0aGUgc3lzdGVtLCBub3QgcmVib290aW5nIGl0Lgo+IEJ1dCBv
biBzZWNvbmQgdGhvdWdodCwgYW55b25lIHdobydzIG1ha2luZyB0aGVzZSBjaGFuZ2VzIHdvdWxk
IGJlCj4gaW52ZXN0aWdhdGluZyB0aGUgZHJpdmVyIGFueXdheS4KPiBTbyBJJ2xsIGNoYW5nZSBp
dCB0byBkZXZfZGJnLgoKSW5kZWVkLCB0aGlzIGlzIHRoZSBleHBlY3RlZCBjYXNlIGZvciBSSzgw
OCwgd2hpY2ggaGFzIHRvIGJlIApzeXN0ZW0tcG93ZXItY29udHJvbGxlciBpZiB5b3Ugd2FudCBz
aHV0ZG93biB0byBhY3R1YWxseSBwb3dlciBvZmYuCgpDaGVlcnMsClJvYmluLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
