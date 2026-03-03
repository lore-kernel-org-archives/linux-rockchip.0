Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65E21EB3648
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 00:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WSomMMbYyncbaw6R1kalYMdtYZ5rWPDEqN734PUFozs=; b=R7RInSPVOEzvmSvho/C72RSTye
	0Eva4Bgfn04rMwJ8A2yxi5Ki3WllARie4iudiNDnmGSeCRWOvmFaf/d9Kbo2cl9UkmaNjj8OuoUHX
	qf8GZbsoeu0EmkoA9FeWL/5TzDTsXboCOhJd6oRgGP9DdcvMldFtp6sw4XBQsC4Ke/oxYpnEZabsP
	rS0ag5gmUBtzNPxNDuWUviRg2kUHmzdRPlUwk4jHgDW46fCBKARTDUfp14qr4D6zjqgkNEM2jhnoV
	cCdPP5tHqr7pYuLW+oj3KahnNaDe4TcOzCrNMo34Nfl7pWu2vOlZCGSAPagiUtmRqW+/zdxx0UETT
	hMUfpNkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxDxB-0000000EHwp-309A;
	Tue, 03 Mar 2026 00:49:37 +0000
Received: from mail-m1973187.qiye.163.com ([220.197.31.87])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxDx8-0000000EHwI-2mYR
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 00:49:35 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3581a66a6;
	Tue, 3 Mar 2026 08:49:30 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-pm@vger.kernel.org, jonas@kwiboo.se,
 pgwipeout@gmail.com, finley.xiao@rock-chips.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, heiko@sntech.de, ulf.hansson@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH V2] pmdomain: rockchip: quiet regulator error on
 -EPROBE_DEFER
To: Chris Morgan <macroalpha82@gmail.com>
References: <20260130163102.51757-1-macroalpha82@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <a1e98f19-2c68-d59e-07bd-57bbcbc742c6@rock-chips.com>
Date: Tue, 3 Mar 2026 08:49:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260130163102.51757-1-macroalpha82@gmail.com>
X-HM-Tid: 0a9cb12be8a409cckunm83dbe4c510455dd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxpOQ1YYSUMfGk1CTxkaTxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=FZRA8lxdP09fxkkMLLfh54R6dP08hfZSKemdHFTpAj0YO8h5Rtj3Ov2Yvu7aQA2BkFzQy3Udf8pEUsuiSZOoxpQgLCqyS9YB2NEibtl1V2BbM6nom598xRQIbpNbj4uG4sF1uptiWTUkdRTK2zw7ibJ7N8bKmxeNL6a3PPmm9nA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qgc2EI+SrAhln7tyy6J5i4dEecxK8IQ9XGIqONjIZWo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_164934_900795_41B6FB74 
X-CRM114-Status: GOOD (  16.84  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMS8zMSDQx8bawfkgMDozMSwgQ2hyaXMgTW9yZ2FuINC0tcA6Cj4gRnJvbTogQ2hy
aXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAKPiBDaGFuZ2UgdGhlIGRldl9l
cnIoKSB0byBkZXZfZXJyX3Byb2JlKCkgdW5kZXIgcm9ja2NoaXBfcGRfcG93ZXJfb24oKQo+IHRv
IHByZXZlbnQgZXJyb3JzIGVhcmx5IGluIHRoZSBib290IHByb2Nlc3Mgd2hlbiB0aGUgcmVxdWVz
dGVkCj4gcmVndWxhdG9yIGlzIG5vdCB5ZXQgYXZhaWxhYmxlLiBUaGlzIGNvbnZlcnRzIGVycm9y
cyBsaWtlIHRoZSBmb2xsb3dpbmcKPiB0byBkZWJ1ZyBtZXNzYWdlczoKPiAKClJldmlld2VkLWJ5
OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCj4gcm9ja2NoaXAtcG0tZG9t
YWluIGZkOGQ4MDAwLnBvd2VyLW1hbmFnZW1lbnQ6cG93ZXItY29udHJvbGxlcjogRmFpbGVkIHRv
IGVuYWJsZSBzdXBwbHk6IC01MTcKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBNb3JnYW4gPG1h
Y3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IFRlc3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGll
ZGVyaWtAY2tub3ctdGVjaC5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAgIC0gU2lt
cGxpZmllZCByZXR1cm4gdG8gc2luZ2xlIGxpbmUKPiAtLS0KPiAgIGRyaXZlcnMvcG1kb21haW4v
cm9ja2NoaXAvcG0tZG9tYWlucy5jIHwgNyArKystLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bt
ZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAv
cG0tZG9tYWlucy5jCj4gaW5kZXggOTk3ZTkzYzEyOTUxLi42ZDNmYjE4ZjRhYjMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiArKysgYi9kcml2
ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IEBAIC03MDUsMTAgKzcwNSw5IEBA
IHN0YXRpYyBpbnQgcm9ja2NoaXBfcGRfcG93ZXJfb24oc3RydWN0IGdlbmVyaWNfcG1fZG9tYWlu
ICpkb21haW4pCj4gICAJaW50IHJldDsKPiAgIAo+ICAgCXJldCA9IHJvY2tjaGlwX3BkX3JlZ3Vs
YXRvcl9lbmFibGUocGQpOwo+IC0JaWYgKHJldCkgewo+IC0JCWRldl9lcnIocGQtPnBtdS0+ZGV2
LCAiRmFpbGVkIHRvIGVuYWJsZSBzdXBwbHk6ICVkXG4iLCByZXQpOwo+IC0JCXJldHVybiByZXQ7
Cj4gLQl9Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKHBkLT5wbXUtPmRl
diwgcmV0LAo+ICsJCQkJICAgICAiRmFpbGVkIHRvIGVuYWJsZSBzdXBwbHk6ICVkXG4iLCByZXQp
Owo+ICAgCj4gICAJcmV0ID0gcm9ja2NoaXBfcGRfcG93ZXIocGQsIHRydWUpOwo+ICAgCWlmIChy
ZXQpCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
