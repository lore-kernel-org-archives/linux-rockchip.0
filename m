Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DBEAC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 08:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i+m6sjDR6nVcPDSQdOZwPVTYmw8c4uVErsCfc1eyh7g=; b=Lkfbe5CWs0IrsNRPYXDpJ8Rne9
	QuKy9LYfcNd1yKD4hiBaBSpEJgN+g7W8Hdio26C1jBcO05GTATyWCh0uvd7Y2/GLRVIDqwNeNIpwA
	bujLjUzWJ/PgP53hRD15QRw/iFkf9NePiW6A+Kj7reBbE9JLYSyofYAnKCM8lLYen9kB7ieYNDOXD
	yP2kqyXazIwtHZYehiECvF4JR8ZkSvdU4zo5gWG4mD8cgzLk1p7teWVf/Dl+3nX66YUczltCSrqMh
	2ts/byYwnRtTWXNdqRChM/DD4iZtoyJWyGzfVQSTzYu1j1rrROvJ1v/LPoBre0EzXXQ3PXSTyv8/8
	fMOBo+9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxN7r-00000001QFh-1W3b;
	Thu, 18 Apr 2024 08:28:11 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxN7m-00000001QEc-2JKF;
	Thu, 18 Apr 2024 08:28:08 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713428880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MDIUutjkBtcMupJEPwPTtmltqD4/go0oHDIGSIsxcDs=;
	b=QU1WIzXgqPF9R+a7Ua9scuvOaWdUWh7ddESfB18+wLlGZZ/7YbBvwZE202eFLCt8RNrDy3
	XRzWT1WQPACyeDcqrbzIdXstZmBnV3qLaMlXSCXnGugugFG4fNyLuvkSFCP3pP/coDH3sC
	Ge8unEV65QfY/5H1curNB11Vtc2ZD3s6ri/ytDat3LdVp+GCtFBBlCtuGwCIU5EC3G8VCX
	nLjMS9Tj4D16a0spQVDjbK9hjRV9ZOgNcQCgbBjvpWGwHVDj/LgMar9DUjwdhHQ6BhDj2p
	AT2BzxUOUjNF4zHjEyCiQC9birPQxTNtCsVFcWe0S3tsOd55DU8zdWUu8dt3MA==
Date: Thu, 18 Apr 2024 10:28:00 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add PCIe3 support on rk3588-jaguar
In-Reply-To: <5932394.MhkbZ0Pkbq@diego>
References: <20240417141642.2243193-1-heiko@sntech.de>
 <cb2004e3-563e-4d36-ab69-89b1d9f6221b@theobroma-systems.com>
 <5932394.MhkbZ0Pkbq@diego>
Message-ID: <b36c5a6fd85e36f7b9adebf76dd0fb85@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_012806_916134_319A5544 
X-CRM114-Status: UNSURE (   7.28  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTA0LTE4IDEwOjEyLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBEb25uZXJzdGFnLCAxOC4gQXByaWwgMjAyNCwgMTA6MDc6MzcgQ0VTVCBzY2hyaWViIFF1
ZW50aW4gU2NodWx6Ogo+PiBPbiA0LzE3LzI0IDE2OjE2LCBIZWlrbyBTdHVlYm5lciB3cm90ZToK
Pj4gPiBGcm9tOiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+PiA+
Cj4+ID4gVGhlIEphZ3VhciBTQkMgcHJvdmlkZXMgYSBNLjIgc2xvdCBjb25uZWN0ZWQgdG8gdGhl
IHBjaWUzIGNvbnRyb2xsZXIuCgpKdXN0IGEgbWlub3Igbml0cGljay4uLiAgcy9hIE0uMi9hbiBN
LjIvCgo+PiA+IEluIGNvbnRyYXN0IHRvIGEgbnVtYmVyIG9mIG90aGVyIGJvYXJkcyB0aGUgcGNp
ZS1yZWZjbGsgaXMgZ3Bpby1jb250cm9sbGVkLAo+PiA+IHNvIHRoZSBuZWNlc3NhcnkgY2xvY2sg
aXMgYWRkZWQgdG8gdGhlIGxpc3Qgb2YgcGNpZTMgY2xvY2tzLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
