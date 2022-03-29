Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29DBFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 07:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtH89PYyy2O1nBC7LP/wnITDysp1gQQ9ViGF8kgB3lE=; b=eCOLbQxAy/MZNh
	QEh6gtYfNtBbdxBwheSFGXEzTFJlIPo2Xzj3sSUeKkAVG9sFxMxBBGd4k3Jo97tua0eZYuP1JOjay
	SMKLxO8IXydT/jZ8gMphVdLpBbZL05WPFJpFDQdvmqrGUmC28WoVLfTnzgCZPXPiIA6kv4g/mzLv7
	lc56LBQiCUyVJBj4wg9W+m79HXTQx4h6V83hyRF3cAw9z9VxxN3RjYrARs9Wdsz7G2UoPouj57uwQ
	e1HSBcunzrRmevYeFoy2nneBdHSI/vzv4zzK42N+nl86WQw4jxbuA+lu+rXmFYjBZCiJWtVB1fpO0
	/N0v+IbTh/G+/oGCxKrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ6KD-00BL0d-K2; Tue, 29 Mar 2022 07:31:33 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ6Jr-00BKpj-Sz; Tue, 29 Mar 2022 07:31:14 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 17so22276790ljw.8;
 Tue, 29 Mar 2022 00:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=XWnk+pKdZJqmV62/h657OWIHY82bAb8Z3BgjqTiOLz4=;
 b=ZCavqCdVJwYtGfT81BfsVjv2DbWIBe15YHPAb2is2LlqnbovkJCrWB7jH14nRSJsbc
 1PeyPqzQYMIhT03U54XHuSToZmfYPBcMumixdH39LypobqzQ+YGKtqjXV/Hu9zm+Mgcv
 6gZyCzkU5ySSErh38hFZ8tOjr54LdLAsmBoW45UOoFqVTMOq0mG2Zq55SaaYQBPI1PIp
 DQohnuBitjJ7L1+05TsrmaqyziJ5QwMZZFuVe+LAj6hxFW2gv8+ZjVg9zsMGdbV6Hiv5
 NqQGtElNtHViCHkWeFk28wQyGb41x63um96QvtKx/rq3bXRIszv79P8E2F1rv7X2ODfS
 +hfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=XWnk+pKdZJqmV62/h657OWIHY82bAb8Z3BgjqTiOLz4=;
 b=60u4s0B8f6coqtT+/wP14CEDoJzK7D+GitbuxUClR2h0Ka3rXTUyybbbjsplCTqCA+
 F2Kz/cEFh672JIqQs8Im5ZqgwqBNhIn2H80sAPR6SqLV8pqfN4j0CEL0ab5MDwEca84u
 AiN5o7kJiBOAACnF7xHTjelvAqe9jqaLrpmtraKhI0dQf1ZVFvioc+q+GUYohTciHkwM
 828XAZfXBL5WOhdA39pkzISUbb0eNUi/m7OgQ9LCgCa7+dvKh4So00M0zPsRdTw1akYw
 a43TsaL3Qra5fU3dyk5hbXd/mWP3YfW0pdwWz5MDBrtM4yvwTrOxJV7K684fshyUTOaA
 GmgQ==
X-Gm-Message-State: AOAM530ixmK7cDtFaAHj6ZzjIl+ThR54uvFe39vQqQhlps+KlZaIcw94
 3rveJhscfN+I5AfnbPBE5N0=
X-Google-Smtp-Source: ABdhPJyT5tL6mJoGz4sCX2mi3mIH2uu0ICIFJhwPC75SzUetOpN8XKJFv4/ZDm10r94iaB6qmCbJlw==
X-Received: by 2002:a2e:b179:0:b0:24a:d3da:8691 with SMTP id
 a25-20020a2eb179000000b0024ad3da8691mr1412035ljm.392.1648539067518; 
 Tue, 29 Mar 2022 00:31:07 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 l18-20020a194952000000b00445bf2c3b83sm1898047lfj.58.2022.03.29.00.31.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Mar 2022 00:31:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220328151116.2034635-1-s.hauer@pengutronix.de>
Date: Tue, 29 Mar 2022 09:31:01 +0200
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Message-Id: <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_003111_995201_925A5CB0 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDI4LjAzLjIwMjIsIG8gZ29kei4gMTc6MTA6Cj4gCj4gCj4gQ2hh
bmdlcyBzaW5jZSB2ODoKPiAtIG1ha2UgaGNsa192byBhIGNyaXRpY2FsIGNsb2NrIGluc3RlYWQg
b2YgZW5hYmxpbmcgaXQgaW4gdGhlIGhkbWkgZHJpdmVyCj4gLSBGaXggdm9wMl9zZXR1cF9sYXll
cl9taXhlcigpLCByZXBvcnRlZCBieSBBbmR5IFlhbgo+IC0gTGltaXQgcGxhbmVzIHBvc3NpYmxl
X2NydGNzIHRvIGFjdHVhbGx5IGV4aXN0aW5nIGNydGNzCj4gCj4gCgpTYXNjaGEsCgpGWUk6Ckkg
d2FzIGhvcGluZyB2OSB3aWxsIGZpeCBncmVlbiBzY3JlZW4gaXNzdWUgaSBzZWUgd2hlbiB2aWRl
byBwbGF5ZXIgd2FudHMgdG8gZHJhdyB0byBudjEyIGNhcGFibGUgZHJtIHBsYW5lLgpJdCBsb29r
IGlzc3VlIGlzIHN0aWxsIHByZXNlbnQgOi0oCgpZb3UgY2FuIGVhc2lseSByZXByb2R1Y2Ugd2l0
aCBtb2RldGVzdCB1dGlsaXR5OgoKbW9kZXRlc3QgLVAgNDNANjc6MTkyMHgxMDgwQE5WMTIgCgpn
aXZlcyBncmVlbiBzY3JlZW4uCgpob3dldmVyIGlmIHlvdSBkbzoKCm1vZGV0ZXN0ICM0MyAoZ3Jl
ZW4gc2NyZWVuKQptb2RldGVzdCAjNDkgIChvaykKCnRoZW4KCm1vZGV0ZXN0ICM0MyAKCmdpdmVz
IGV4cGVjdGVkIHJlc3VsdCAoInJhaW5ib3ciIHBpY3R1cmUgb24gc2NyZWVuKQoKbGV0IG1lIGtu
b3cgaWYgaSBjYW4gZG8gYW55IGV4dHJhIHRlc3RzIGhlbHBpbmcgeW91IHRvIGZpeCBpc3N1ZQog
CmJyCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
