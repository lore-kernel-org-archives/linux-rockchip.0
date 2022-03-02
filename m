Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0272C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 01:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbjAQEuEZALp/MmfJ9b7pcSZpl38laRhjYpPqlsgw58=; b=hG9xb2XPhV5Yb1
	bmen+BI+iXUlvhoO9bCahjPLrvFJ+EJfzP+m8kITcyR+wdPz/sLaEWURqgTyxsq5kTwRaHeUcy1Er
	ky4zHsG3kjdVU4AicRwwUiFeu9PVgIdxtli6iVuBZ2JAJN8BMy23y2sW4ISQVzBQGYrqLQh3soMMp
	m6fQkA1y4n1ajalYvU5w0Rq66FMxx1AmAZ00Tc8pQ++8PajJfKoe2hBoMnJLXthkuYyy4yFU6ccs2
	pYRnPwMYi3WNkzn8gEOHiEMsOEN4XsIDdb0J+j62W+rHRtmn3HZ5Q6zTLy3AxbDlQs++/D3s1p/sN
	meqOgaX5LhIPzjvm/+Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPDgG-000yNX-EW; Wed, 02 Mar 2022 01:21:28 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPDg3-000yMT-TO; Wed, 02 Mar 2022 01:21:17 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id g1so316434ybe.4;
 Tue, 01 Mar 2022 17:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2FJt3wZ2aC/AYzG97/OeEx9hgBhhRCpW1mrvr74R3VY=;
 b=CCvP2op0INjqscSf7KL0YIMiHDDQNCK450i8SkOUKzEyIZ6COzqHu7BGbD1BAOyM/h
 ADaGPVAAgKkUc9YnE+/PLFzeN9rYRHNdZbYdoOSPcw3kFmPanpYw3QgHJQ2reEdbEu1l
 1F0LIWLqF3GKrqLbXlZ4dz89FMU4tp8gTf+iK5aBfuxE3EICVQOkSzFmu52abedVqDO2
 FFWK9/HbdjrRPH7r4TjvykjaXBGtdrkVi/R+Mj9AMUuIbQdE24QElTXGewHc57XDipA5
 XBTS/j5E1QfTNwta8cJjSYJRCwi/t8/GlJNsovsx+nXs9CxkadIbNIaCOSlMCRNSIUQx
 sY3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2FJt3wZ2aC/AYzG97/OeEx9hgBhhRCpW1mrvr74R3VY=;
 b=WMJwEgpCvMkkbBQ2n4XgqDOURBPmKyDM0FiKLn+2HlhgZP2wyRs9ZKUj99qQSYSCJ6
 fKQmG3vklu3ASZ/ogOEJO68v4yrrOMmpEZyT2iERzG0U3hw6zlz01OH8dDJebjjuAXuu
 nV6/aK6fTtLKfl4LB2eLU6X3/HonSyHa46yKhyYXbUEtd4vIUsmpqqadBafP/4CxevyI
 ZPiVZFSKcfwJSCK0WHcD5FABgN2ZlnpnzR975B5hIS0ZLSRK/GUgu0CyiZXQ/lVLQ3Hc
 mAtavspW2MhK84FGGKtusOnaGZIsdY9Zpg47m468SyMGqUvYcHgYotU4zep41+YWoGi/
 918A==
X-Gm-Message-State: AOAM533nrTV9akPqGD+9O36aupuaBRWbClVYStyJvpULWtJHopNw18wr
 5Ec2xbZR0+/25t00+p2nwvqnfmGFW5SH/oE0537X69R7KIU=
X-Google-Smtp-Source: ABdhPJwSSPPrIFaaXxkU7hcBCBx3NM30v0YRu2iOdoDrr8ecZbsjnbs2oLKu9WUxBjWvKtPthlTCHPGwv/YvovKGSjM=
X-Received: by 2002:a25:f802:0:b0:628:7f76:c232 with SMTP id
 u2-20020a25f802000000b006287f76c232mr4889053ybd.366.1646184074382; Tue, 01
 Mar 2022 17:21:14 -0800 (PST)
MIME-Version: 1.0
References: <20220228223642.1136229-1-pgwipeout@gmail.com>
 <242bae88-5dde-f005-6580-6024d51e0700@rock-chips.com>
In-Reply-To: <242bae88-5dde-f005-6580-6024d51e0700@rock-chips.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 1 Mar 2022 20:21:03 -0500
Message-ID: <CAMdYzYrrZvZfC42cYYtUMRTyp-EfNBLpu1YJ-0zcr8DKw-x03Q@mail.gmail.com>
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: avoid logspam when cd-broken
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-mmc@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_172115_974008_8E6C6BEB 
X-CRM114-Status: GOOD (  22.66  )
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

T24gVHVlLCBNYXIgMSwgMjAyMiBhdCA4OjA0IFBNIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2st
Y2hpcHMuY29tPiB3cm90ZToKPgo+IEhpIFBldGVyLAo+Cj4g5ZyoIDIwMjIvMy8xIDY6MzYsIFBl
dGVyIEdlaXMg5YaZ6YGTOgo+ID4gVGhlIGR3X21tYy1yb2NrY2hpcCBkcml2ZXIgZHJvcHMgYSBs
YXJnZSBhbW91bmQgb2YgbG9nc3BhbSBjb25zdGFudGx5Cj4gPiB3aGVuIHRoZSBjZC1icm9rZW4g
ZmxhZyBpcyBlbmFibGVkLgo+ID4gU2V0IHRoZSB3YXJuaW5nIHRvIGJlIGRlYnVnIHJhdGVsaW1p
dGVkIGluIHRoaXMgY2FzZS4KPiA+Cj4KPiBNYXkgSSBrbm93IHdoaWNoIHBsYXRmb3JtIGRpZCB5
b3UgdXNlPwoKSXQncyByazM1NjYuCgo+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxw
Z3dpcGVvdXRAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvbW1jL2hvc3QvZHdfbW1j
LXJvY2tjaGlwLmMgfCA5ICsrKysrKystLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9o
b3N0L2R3X21tYy1yb2NrY2hpcC5jIGIvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAu
Ywo+ID4gaW5kZXggOTVkMGVjMGY1ZjNhLi5kMGViZjBhZmE0MmEgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCj4gPiArKysgYi9kcml2ZXJzL21tYy9o
b3N0L2R3X21tYy1yb2NrY2hpcC5jCj4gPiBAQCAtNTAsOCArNTAsMTMgQEAgc3RhdGljIHZvaWQg
ZHdfbWNpX3JrMzI4OF9zZXRfaW9zKHN0cnVjdCBkd19tY2kgKmhvc3QsIHN0cnVjdCBtbWNfaW9z
ICppb3MpCj4gPiAgICAgICAgICAgICAgIGNjbGtpbiA9IGlvcy0+Y2xvY2sgKiBSSzMyODhfQ0xL
R0VOX0RJVjsKPiA+Cj4gPiAgICAgICByZXQgPSBjbGtfc2V0X3JhdGUoaG9zdC0+Y2l1X2Nsaywg
Y2Nsa2luKTsKPiA+IC0gICAgIGlmIChyZXQpCj4gPiAtICAgICAgICAgICAgIGRldl93YXJuKGhv
c3QtPmRldiwgImZhaWxlZCB0byBzZXQgcmF0ZSAldUh6XG4iLCBpb3MtPmNsb2NrKTsKPiA+ICsg
ICAgIGlmIChyZXQpIHsKPiA+ICsgICAgICAgICAgICAgLyogdGhpcyBzY3JlYW1zIHdoZW4gY2Fy
ZCBkZXRlY3Rpb24gaXMgYnJva2VuICovCj4gPiArICAgICAgICAgICAgIGlmIChob3N0LT5zbG90
LT5tbWMtPmNhcHMgJiBNTUNfQ0FQX05FRURTX1BPTEwpCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgZGV2X2RiZ19yYXRlbGltaXRlZChob3N0LT5kZXYsICJmYWlsZWQgdG8gc2V0IHJhdGUgJXVI
elxuIiwgaW9zLT5jbG9jayk7Cj4gPiArICAgICAgICAgICAgIGVsc2UKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICBkZXZfd2Fybihob3N0LT5kZXYsICJmYWlsZWQgdG8gc2V0IHJhdGUgJXVIelxu
IiwgaW9zLT5jbG9jayk7Cj4gPiArICAgICB9Cj4gPgo+ID4gICAgICAgYnVzX2h6ID0gY2xrX2dl
dF9yYXRlKGhvc3QtPmNpdV9jbGspIC8gUkszMjg4X0NMS0dFTl9ESVY7Cj4gPiAgICAgICBpZiAo
YnVzX2h6ICE9IGhvc3QtPmJ1c19oeikgewo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
