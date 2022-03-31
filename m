Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88F99C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 14:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGpZH/tUytonIGyd0Qrsa9oU+2u3sYjPHdEVqwLnWM8=; b=hBXiYN4NejTJK8
	D8aKFGxmInLs1oVW7zwz2DNk5XT5vP+5XOTQRyAkSbPvHHLrQ28Hf5w6L/dW1DdJA4De1jcuIuewn
	Mk+ZMHo6phGzK38l9VgbLgQuJ4mbIy21MZoUkMWpQJSh/qYAjRRw3d5Za8ZGmevcnzm5Uix4IdX85
	nd5kcxjzhBQc08YHyZTfIlPJNc5sEH9n39zzvzFKEeHL994EMdfwGCZ6PRwBJbWkO6pqzMtwM8yUp
	VZ2W6x7OR45eKp8JkzuB9B53ZdlU/K23Lt0kdPxcwSarvdcSkfJ0SZTSVAh6KeT9XCLJbNvq0ptz6
	lTtFb7JcilnPy7ZIRSYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZwAl-002dlq-J0; Thu, 31 Mar 2022 14:53:15 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZwAh-002dkZ-Gv; Thu, 31 Mar 2022 14:53:13 +0000
Received: by mail-lf1-x129.google.com with SMTP id bq24so26020707lfb.5;
 Thu, 31 Mar 2022 07:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=vmDoeYM65y2kqs1U0FjAeUg/McAYeZD0ngDAl5aKrAo=;
 b=RyouiGpySHcPSY1tsZUMswdSX4nK4ERJpUB2Jf6J4w+z5hEQxrSjwCW+IAK/hlZwBb
 anzNUweszLBngBNRSBC8Hug/rfUXNkVWFw80eICjp+0uWUUuJFHBHFFwLmUfNujpdt0J
 kze90T27WMBs/JcG/5/NvBjUrNQQoNCQ6A92E9KfGxZzenaOjyEAhP3IqYF3ZAM4t2Zo
 dfTtXsLrVkbaHcUn344NwSum040Exb3Mx5Z+0oCAmdeRWdIcAJza/Y52YivP/MqNxqjf
 mlJH8zbT1EoTdFrFUOyoz6flgmDNhuq4KDeXE42VvSIg4wt1MheoUKg+AqFY2Xlthymr
 FTPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=vmDoeYM65y2kqs1U0FjAeUg/McAYeZD0ngDAl5aKrAo=;
 b=10mANSQhFDuugDw7yKoJOrjtNrejx3zfzJupk9CkzjNdyfgaYb6FT69kkksvq4kahB
 q4pywmWepvJqFDZxv37nqlMZbKqvkiWIk1/zasZGhXPY/UtaHE9/2Pc6Zp9fbUWQohx4
 Pj+wQ668IZLBD4I+lmAqsqkK0Jb3EZJlfj10kovMvCgs4WTGS531NKU5HLi0pIGbYw8p
 R1qm46TiK62t03V/la5GCHrGKO8z0XWv+SdGTNM3x51wNw9foNPn4J+wobZtNHc2eNHG
 yPw5Y6VHgffQI2p5BjIPIy7Ifh6F/0EbUbQ5QFuY8flOKTMtQkTa09j3IkoAvcpDEHeX
 KL9w==
X-Gm-Message-State: AOAM530sUZi0qRaQefu08shPj3HEYJPOEPQWd0aFsdRq7UTtkM4iD7v9
 QRaCqF95SdSsUY0nbLfjqUU=
X-Google-Smtp-Source: ABdhPJyDO0bLXzl2vQOY9DGHFBCDhJm9sy6FjUb5x2hdqVvfwTTSfCqYy0LZtN6iLHXj8GSY+7rYDQ==
X-Received: by 2002:a05:6512:1148:b0:448:39c8:89d with SMTP id
 m8-20020a056512114800b0044839c8089dmr10802007lfg.644.1648738387780; 
 Thu, 31 Mar 2022 07:53:07 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 bu1-20020a056512168100b004437db5e773sm2692814lfb.94.2022.03.31.07.53.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 31 Mar 2022 07:53:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
Date: Thu, 31 Mar 2022 16:53:05 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Message-Id: <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
To: Andy Yan <andy.yan@rock-chips.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_075311_617724_1A84E982 
X-CRM114-Status: GOOD (  10.64  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNo
aXBzLmNvbT4gdyBkbml1IDMxLjAzLjIwMjIsIG8gZ29kei4gMTQ6MTM6Cj4gCj4gCj4gUGlvdHI6
Cj4gCj4gV2hhdCBzb2MgaXMgb24geW91IGJvYXJkPyByazM1NjYgb3IgcmszNTY4PwoKaXQgaXMg
cmszNTY2IGluIHg5Ni14NiB0dmJveAoKCj4gCj4gSSBoYXZlIGEgc2NyaXB0c1swXSAgdXNlIGlv
WzFdIGNvbW1hbmQgdG8gZHVtcCB0aGUgVk9QMiByZWdpc3RlciB5b3UgY2FuIHVzZSBpdCBkdW1w
IHRoZSByZWdpc3RlciBjb25maWd1cmF0aW9uIHdoZW4geW91IG1lZXQgYSBkaXNwbGF5IGZhaWx1
cmUsCj4gCj4gdGhlbiBzZW5kIHRoZSBkdW1wIHRvIG1lLCBtYXliZSBJIGNhbiBmaWd1cmUgb3V0
IHNvbWV0aGluZy4KPiAKPiBbMF1odHRwczovL2dpdGh1Yi5jb20vYW5keXNocmsvYnVpbGRyb290
L2Jsb2IvMjAyMi9ib2FyZC9hbmR5c2hyay9yb290ZnNfb3ZlcmxheS91c3IvYmluL3ZvcDJfZHVt
cC5zaAo+IAo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vYW5keXNocmsvaW8KCkFuZHkKClBscyBz
ZWUgaHR0cHM6Ly9wYXN0ZWJpbi5jb20vQ0htdTlzMjIKCkkgcHV0IGR1bXBzIGZvciBmb2xsb3dp
bmcgc2NlbmFyaW9zOgoKMS4KLWJvb3QKLW1vZGV0ZXN0IC1zIDY5QDY3OjE5MjB4MTA4MCAtPiBv
awotbW9kZXRlc3QgLVAgNDNANjc6MTkyMHgxMDgwQE5WMTIgLT4gZ3JlZW4gc2NyZWVuCgoKMi4K
LWJvb3QKLW1vZGV0ZXN0IC1zIDY5QDY3OjE5MjB4MTA4MCAtPiBvawotbW9kZXRlc3QgLVAgNDlA
Njc6MTkyMHgxMDgwQE5WMTIgLT4gb2sgKGJ1dCBzaGlmdGVkIGhvcml6b250YWxseSBieSBhYm91
dCA1JSBvZiBzY3JlZW4gd2lkdGgpCihzZXR0aW5nIHBhbG5lIzQ5IGZpeGVzIHBsYW5lICM0My4g
SGVyZSBpIHNldCBwbGFuZSAjNDkgYnV0IG5vdCB5ZXQgc2V0dGluZyAjNDMpCgoKMy4KLWJvb3QK
LW1vZGV0ZXN0IC1zIDY5QDY3OjE5MjB4MTA4MCAtPiBvawotbW9kZXRlc3QgLVAgNDlANjc6MTky
MHgxMDgwQE5WMTIgLT4gb2sgKGJ1dCBzaGlmdGVkIGhvcml6b250YWxseSBieSBhYm91dCA1JSBv
ZiBzY3JlZW4gd2lkdGgpCi1tb2RldGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiAtPiBub3cg
b2sgKGJ1dCBzaGlmdGVkIGhvcml6b250YWxseSBieSBhYm91dCA1JSBvZiBzY3JlZW4gd2lkdGgp
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
