Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D17C021A4
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Feb 2025 18:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bOTLhZw0mnFdJ7NctQLAQNjQnQtw3d3HJ4EGTvfmVM=; b=sCYLPcwQoSQXL1
	ZlED4xQ6YeFS0ADvAov41fHJtIBqWVV81szeDg4fTgtxjGlcz4LePPeRNuM287CJqwEQfEaJQfMce
	bmLuNjTauGd2wqjsCj8SsUKzWlEabRiF7Cz3WG8Od3v+w8bwzFjwJ2aZT+96sw0mnU8kdWMiVxUDV
	F6c9VdoJ31S9AqZD7697cF5/nmVWKijmPCu//AxhIC2mu0eGcep3ANkk4qEgCXpVvjEXgzGy60YBG
	ah3+H0l29iHiHBbaPNeqLH4kVa/DMOWS72/vviGCSlidHLOlVTHTaqRZ4z55CrCI7W5pfMatLTgMP
	5HjlZjSfkFM7zN9UMfJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tidjL-0000000CBE5-2paN;
	Thu, 13 Feb 2025 18:14:31 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tictj-0000000BzMQ-2YCr;
	Thu, 13 Feb 2025 17:21:12 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5dec996069aso1942143a12.2;
        Thu, 13 Feb 2025 09:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739467270; x=1740072070; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/L8X4e7idHOInm1E1NvmDqFmI3f3xIs3AaNrbgOvVqo=;
        b=BogrwheX1lsWxFKIf2vDsJUYb3i3WghCblo44997I2w3mtOOaL4RWqSHvMKvpiUoDt
         16nx5TeDYaLnoG38+kKZjoHS7nOwdzk6TPq2RklQEZDeTmhWBzEPmhJSFVJ+jd04cHPh
         7LiIaJfJvoHdR05xlipNGEoAqiHVvWf7ejh4UsTDIgGRCpbzWnjd4iHtIwU35Qqh0JbZ
         5813rhieHC/cPdZ4og7lsj4iR7IYWVrViVx3PX2Rs1JSkreuqjlwEm/XWp2XE3gNp5hi
         vUWUlhLVjcyC+O8PL0qDRnQ13xs3PLqX55B2niY4zelT//y2uoLywfuDPghN+MdGXjCS
         /ZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739467270; x=1740072070;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/L8X4e7idHOInm1E1NvmDqFmI3f3xIs3AaNrbgOvVqo=;
        b=Tg0kAAY516iQkNSZwzYSTzKzy4g5bCKQUp+nT2dpqKoRFa1g0CRe6BAcUuUBb5YFAb
         cB/YntjIa+rHMjrtJYmw/p2zM8dI+s/oIAHPtLWvgPe2Xf4jgzMVhKJ+QmoIukxoL6GY
         lOy5GMVuN2H+57uDnN8ZPZOSDOa+x2tX8EXPC5SVmf4wAHgUpmjWgqsdNnuthe2Qcufw
         rtf8oEsmDbOkUrlsAoaENRIMdaQWXLJNuZoNuhzfaCW+uqpWDr1BCW2TG6CijOH5vrCl
         ILBB57WeeXCBJE6HoNzFmEmwDENYq2x/tqvqTieN2xODrjtm/XqvZvWnYS3qMNjYRkoq
         tfHg==
X-Forwarded-Encrypted: i=1; AJvYcCVAcBXpO8Ky4d29EZ0ymq3f2zw81EK9aqaygEkiZtJzlGOjVTBCxT5k68WMPB/ESkfHZRgi2JVY0WaBQAMwJYJM@lists.infradead.org, AJvYcCW6gQu7MQ/qyC4cwOakrddNvPHFtkcaUafLbqEmzz28oeXQEpBanSbwrDSYUcJ85Q8oVg5wMQhbBTr6Rxc0tWc=@lists.infradead.org, AJvYcCWxxfa36YLzL7LiFIRZerGPSjWCNYJkKD/HgG0MsIZ4bpFgzQMvmdFiQGbKce5n4+O1MXniOIKzbu+I@lists.infradead.org
X-Gm-Message-State: AOJu0YyOXXGkHhqb9sh2q2514aUhQqcIOwVFA5SjqG5oaKaFEgNSCOfM
	UIxdXA+xrsRzPHFQcUbj8V35zy/39nEPybDet1F5GCOj4SU0EP7jLCufObw4
X-Gm-Gg: ASbGnctpdtlzhCvZOzjeurbmxO+JxYjOsAqK75WJXhcgncL1wnx4A76mt+I2lhrlRVw
	68Jqft9PuyIFgzfeDpjDOIU33KLW4l7agH4ltzYI1kLvM/AyxpMVW088d6VU6X+59QmGe26l1RY
	3DRclZbsB6vsJyOQYkUQvMG71vHquOA2069ljXYUJB+2Ut7adp31x7Bhe4MKSQAq7hfd6+sdGwp
	ZflMM5cRrYbo5fo8m7ww1n7c8aB9m/JTGo1ztN8NTZmJt4UEviXVYAdhT8l3t55gkOgWpBQ5vaH
	nV3dl5s/DOvWbKoc2hPNSF31wQMlFjvXXtwl3aJbRB/3fwLytUfNu2LgcwCfRPeUqUuvXGX9
X-Google-Smtp-Source: AGHT+IErHbsUtfgzkzhuHG33dvhjaZL2J0Jo8G6oOoESna+1j7QGmuOo4G7y0Y6m+8a3iiqQL9uH6g==
X-Received: by 2002:a05:6402:3553:b0:5d9:82bc:ad06 with SMTP id 4fb4d7f45d1cf-5deadd7b8b8mr7475158a12.3.1739467269631;
        Thu, 13 Feb 2025 09:21:09 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1d349esm1490025a12.33.2025.02.13.09.21.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Feb 2025 09:21:09 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH v6 00/14] Add eDP support for RK3588
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <D7RH63Z1VBBD.1AIOQJIWPZIXS@cknow.org>
Date: Thu, 13 Feb 2025 18:20:57 +0100
Cc: Damon Ding <damon.ding@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>,
 Robert Foss <rfoss@kernel.org>,
 devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 sebastian.reichel@collabora.com,
 dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com,
 kever.yang@rock-chips.com,
 dmitry.baryshkov@linaro.org,
 vkoul@kernel.org,
 andy.yan@rock-chips.com,
 krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Message-Id: <59278550-BD6E-454C-AB31-084E13C19409@gmail.com>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <5044FFCB-B325-40D0-BA82-03AF64EAF029@gmail.com>
 <D7RH63Z1VBBD.1AIOQJIWPZIXS@cknow.org>
To: Diederik de Haas <didi.debian@cknow.org>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_092111_651220_B78CDD39 
X-CRM114-Status: GOOD (  13.97  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERpZWRlcmlrIGRlIEhhYXMgPGRpZGkuZGVi
aWFuQGNrbm93Lm9yZz4gdyBkbml1IDEzIGx1dCAyMDI1LCBvIGdvZHouIDE3OjU2Ogo+IAo+IE9u
IFRodSBGZWIgMTMsIDIwMjUgYXQgMzo1NCBQTSBDRVQsIFBpb3RyIE9uaXN6Y3p1ayB3cm90ZToK
Pj4gCj4+IAo+IAo+IEkgZG9uJ3Qga25vdyBpZiBpdCdzIHJlbGV2YW50LCBidXQgd2hpbGUgSERN
STAgZ290IGVuYWJsZWQgZm9yIHF1aXRlIGEKPiBmZXcgZGV2aWNlcyBpbiA2LjEzLCBpdCBkaWQg
Tk9UIGdldCBlbmFibGVkIGZvciBSb2NrIDUgSVRYLgo+IEkgbWFkZSBhIGxvY2FsIHBhdGNoICh3
aGljaCBkb2VzIHRoZSBzYW1lIHRoaW5nIGFzIHdhcyBkb25lIGZvciBSb2NrIDVCKQo+IGJ1dCBJ
IGhhdmUgbm8gaWRlYSBpZiBpdCBhY3R1YWxseSB3b3JrcyAoSSBkb24ndCBoYXZlIHRoZSBib2Fy
ZCkuCj4gCj4gTWF5YmUgeW91IG5lZWQgdGhhdCBmb3IgZURQIHRvIHdvcms/Cj4gCj4gQ2hlZXJz
LAo+ICBEaWVkZXJpawo+IDwwMDAxLWFybTY0LWR0cy1yb2NrY2hpcC1FbmFibGUtSERNSTAtb24t
Uk9DSy01LUlUWC5wYXRjaD4KCkRpZWRlcmlrLApUaHggZm9yIGxvb2tpbmcgb24gdGhpcy4KCklt
IGFmcmFpZCBwYXRjaCB3aWxsIG5vdCBtYWtlIGhkbWkwIHdvcmtpbmcgYXMgcm9jazUgaXR4IGJv
YXJkIGhhcyBoZG1pMCBkZXNpZ25lZCB0byB1c2UgMzU4OCBlRFAxICsgZURQLT5IRE1JIGNvbnZl
cnRlciAoaW4taG91c2UgZGV2ZWxvcGVkIHJrNjIwIGNoaXApLgoKSSBzdXNwZWN0IHdlIG5lZWQ6
IAotZW5hYmxlIGVEUDEgc3VwcG9ydCAoaG9wZSBEYW1vbiBjb2RlIGNhbiBkbyB0aGlzIGVhc2ls
eSkKLW1hcCBlRFAgdG8gcG9ydDAgaW4gdm9wMiAocG9ydDEgc2hvdWxkIGJlIG1hcHBlZCB0byBl
RFAvSERNSSB0eDEpCi1zZXQgdHlwZUMxL2VEUDEgbXV4IHRvIGVEUDEKVGhlbiBtYXliZSB3ZSBz
aG91bGQgaGF2ZSBoZG1pMCB3b3JraW5nPwoKSW0gY3VyaW91cyBhIGJpdCBhYm91dCB2b3AgcG9y
dCBtYXBwaW5nczogbWF5YmUgd2UgY2FuIGdvIHdpdGggZ2VuZXJpYyBhcHByb2FjaCBsaWtlOgoK
ZURQL0hETUkgdHgwIC0+IHBvcnQwICAgCmVEUC9IRE1JIHR4MSAtPiBwb3J0MSAgIAp0eXBlQzAv
ZURQMCAtPiBwb3J0MiAoKyBleGNlcHRpb24gZm9yIGZvciByb2NrNSBpdHg6IHR5cGVDMS9lRFAx
IC0+IHBvcnQyKQoKCgogICAgCgogCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
