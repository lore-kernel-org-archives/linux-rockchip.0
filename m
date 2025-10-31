Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DF6CCCF9F0
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 03:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDWPaqnRFyUq3Qp3OFpeBL+q+/RhXtDBj/w/7dJt4xs=; b=0Zp3bBfYBzmNy8
	QFzBIRfj2k8/RnHl4OItIykzgp8NW5X4m/W5FkjiUqM6xAa7LkVjPSGawoQiJqwmAxS2tNp0mJ7BJ
	upPgd8z8Q3xsTwHy9HzYp6b265g8mNH/HIbkLyJGcmYHYJhPEnpkIOm3Vh7adrxsDWvNY3crY8GVt
	HjOQznNRSs0h6PDAKEaNiSB75ZmUPH+K8cqYacXWPPhQLMD2GwVZEH0tzukWoA8J4RkEJNT0mfZDt
	2aBjVtgi4+nS5g6K3FNnKav4Fo/IAnaBO+2Jy9cxLZVCw6M23r7RX9lPnVudH1YGSrAopSg+dmSTb
	H6LkN1gxFuE+q31b/uTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEfWT-00000005J6p-3Qgm;
	Fri, 31 Oct 2025 03:09:53 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEfWQ-00000005J5A-3CLv;
	Fri, 31 Oct 2025 03:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1761880147;
	bh=1G8+5WzT60YZleXus4Jt3zOnBZzSs6MoxWhzcmRf0Po=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=deR3JtasJlviqfChjRnKOcW/AJt3pcOhtlqkN03NsUh0vS2w58pr0Ub4JROfh5PUf
	 ktAmmTSI3yuBgY5luTQcBaYtyuJIxejubPMegLB60PKm5Ca1xT7qbLvRR/jG1nP1hz
	 0jG04QPfhoSn3KyiWVbwBcDxtlr4btLIw4zndeOQ=
X-QQ-mid: zesmtpsz3t1761880144tff90455e
X-QQ-Originating-IP: lwY1pcwxR8OcqDz4GZ7fQefy6NjIwogU9iy5TKjSJ/M=
Received: from [172.16.12.149] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 31 Oct 2025 11:09:01 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 429858561965377722
Message-ID: <9073605CE6F29EE7+088ed0de-536b-425a-9942-3b5d6c096e3f@airkyi.com>
Date: Fri, 31 Oct 2025 11:08:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: "Peter Chen (CIX)" <peter.chen@kernel.org>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Peter Chen <hzpeterchen@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20251029071435.88-11-kernel@airkyi.com>
 <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
 <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com>
 <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
 <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com>
 <C6253E8254C80B0F+839b71d0-1bd8-40b7-9515-7ce4a1eb8673@airkyi.com>
 <CAL411-pULVu4AYybW9oW7kmr4M_kJhdytgBjLPb4y6w_2dj+0w@mail.gmail.com>
 <7853bbf0-34e5-4880-a2f4-2d73f25cd5e6@rock-chips.com>
 <CAL411-rFK0o_cxBO_yJFHWurGFKxZGxw6=kpqxRipMetJskTaQ@mail.gmail.com>
 <e2fcc437-0650-4fdf-bb75-3463a80299fe@rock-chips.com>
 <20251031025712.GA1284354@nchen-desktop>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <20251031025712.GA1284354@nchen-desktop>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MITS/U+ucPJSHLkflnBGAeBQIzAM+3T1oDR8mgel23cZn8V4dLmYofS1
	6FBI8J2FoADo85+dT+kiL1WXbWEuhE63ybHtmPgj2pwRkXCjjdTMS8MwCdVdfM0agr/89Ke
	vKyQJquTBEk88LdVLfAutq+xRs3vUEPcnP8vMlxfKJpDBeId8HTdamRq1hvfQlW3l6pjxm5
	cSpBtmVCKx8HR6jzohW0n0Zue1NeI5NRPIlnsnXypca1nfDVIq6Y5xsKjpBHgSXi6YOvChl
	I50TNYPnLxR/YettghOIUsOAf26/GkFsrifNQBPMhxsmiCXta+ebga4h+wi9VkYNL6rdEzQ
	kmNGmHpRV/BnPHl8X1ltkIrXl2znl3ytJK3vTUILEawaXDmQSEMJWXcdPzARvvLvmH5S/zg
	9wGBR0O3OG3G33BZFv6oKuOH+PWf4gkgK4kUuLfeuIZDJ7rrXCgJpcXnaLrTOQaM5LYhgN8
	VPX+MASXE5MCWQEitEreMSA1FtZGrFTRHqkUrwpAUzS4NzEEmkno8kKBzO2q8Juw+83pSoP
	xN3jRWqvY4AI0UHBBO3QDvxB1lIp5xGVKzWCYBxGZt41IqaMGyGUgKWmx79+nd9v0Ao4QnS
	ZNs1dZpj+ODZZvJCIfoHA33I2H6j49orkDGq9ST8YdKu+4nwBqeqSwaYeUfH64iFgS70Dpn
	KvVwZIMAozQjm3wwojIlMOIhXq7yKf4o7XGJb1AD89m4SD8E91bgODtj1IS4P3jqxLvqh51
	JZpHR8f5Qn3QhV6OjwbVCtrX7JhOYTYnMsrVUNb42cudUb7o46T6B94HktAMZhId02Y6yaX
	VhqcuUf7EyErk9I0jKDI8HScyCaTOGlQc2ksL2dUJHgNycY4CVhWMYV73htjmN/cJayXhp6
	/cxkjBgGfQIviU1EMfA5nEfRFw1t7hdtKGZiYgtTxguLS7L4ESVcGcmY0bW3dOc8LEIrKQy
	X0VJOoAeqCBceS2BXEF7hCjTqaGpykvEYIU587UNC4fkaxOI0Mw+LlaLP
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_200951_305016_E0BA4978 
X-CRM114-Status: GOOD (  11.84  )
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

SGkgUGV0ZXIsCgpPbiAxMC8zMS8yMDI1IDEwOjU3IEFNLCBQZXRlciBDaGVuIChDSVgpIHdyb3Rl
Ogo+IE9uIDI1LTEwLTMwIDE0OjUwOjMzLCBDaGFveWkgQ2hlbiB3cm90ZToKPj4+IEhpIENoYW95
aSwKPj4+Cj4+PiBUaGVyZSBhcmUgdHdvIHF1ZXN0aW9ucyBJIGhhdmUgc3RpbGwgbm90IHNlZW4g
dGhlIGFuc3dlciB0bzoKPj4+IC0gV2h5IFVTQjIgUEhZIGlzIHJlbGF0ZWQgdG8geW91ciBUeXBl
LUMgcGF0Y2g/Cj4+IEkgd2FzIGp1c3QgZm9sbG93aW5nIG90aGVyIHBlb3BsZSdzIGFwcHJvYWNo
LiBTb3JyeSwgdGhpcyBzaG91bGQgYmUgcmVtb3ZlZCBmcm9tIHRoZSBkdHMuCj4+Cj4+Cj4+PiAt
IEhvdyBkb2VzIHRoZSBVU0Igcm9sZSBzd2l0Y2ggZXZlbnQgbm90aWZ5IHRoZSBVU0IgY29udHJv
bGxlciBkcml2ZXIsIGVnIGR3YzM/Cj4+IFNvcnJ5LCBJIG1pc3VuZGVyc3Rvb2Qgd2hhdCB5b3Ug
c2FpZCBiZWZvcmUuIFRoZXJlIGlzIGluZGVlZCBhIG1pc3NpbmcgdXNiLXJvbGUtc3dpdGNoIG5v
dy4gSSByZWZlcnJlZCB0byB0aGUgYXBwcm9hY2ggaW4gcmszNTg4LWV2YjEtdjEwLmR0cy4gSXMg
dGhlIGZvbGxvd2luZyB3YXkgb2Ygd3JpdGluZyBjb3JyZWN0Pwo+Pgo+PiAmdXNiY19jb25uZWN0
b3Igewo+PiAgwqAgwqAgcG9ydHMgewo+PiAgwqAgwqAgwqAgwqAgI2FkZHJlc3MtY2VsbHMgPSA8
MT47Cj4+ICDCoCDCoCDCoCDCoCAjc2l6ZS1jZWxscyA9IDwwPjsKPj4KPj4gIMKgIMKgIMKgIMKg
IHBvcnRAMCB7Cj4+ICDCoCDCoCDCoCDCoCDCoCDCoCByZWcgPSA8MD47Cj4+Cj4+ICDCoCDCoCDC
oCDCoCDCoCDCoCB1c2JjX29yaWVuX3N3OiBlbmRwb2ludCB7Cj4+ICDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5MF90eXBlY19vcmllbl9zdz47Cj4+ICDC
oCDCoCDCoCDCoCDCoCDCoCB9Owo+PiAgwqAgwqAgwqAgwqAgfTsKPj4KPj4gIMKgIMKgIMKgIMKg
IHBvcnRAMSB7Cj4+ICDCoCDCoCDCoCDCoCDCoCDCoCByZWcgPSA8MT47Cj4+Cj4+ICDCoCDCoCDC
oCDCoCDCoCDCoCB1c2JjX3JvbGVfc3c6IGVuZHBvaW50IHsKPj4gIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmZHdjM18wX3JvbGVfc3dpdGNoPjsKPj4gIMKgIMKg
IMKgIMKgIMKgIMKgIH07Cj4+ICDCoCDCoCDCoCDCoCB9Owo+Pgo+Pgo+PiAgwqAgwqAgwqAgwqAg
cG9ydEAyIHsKPj4gIMKgIMKgIMKgIMKgIMKgIMKgIHJlZyA9IDwyPjsKPj4KPj4gIMKgIMKgIMKg
IMKgIMKgIMKgIHVzYmNfZHA6IGVuZHBvaW50IHsKPj4gIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwX3R5cGVjX2RwPjsKPj4gIMKgIMKgIMKgIMKgIMKg
IMKgIH07Cj4+ICDCoCDCoCDCoCDCoCB9Owo+PiAgwqAgwqAgfTsKPj4gfTsKPj4KPj4gJnVzYmRy
ZF9kd2MzXzAgewo+PiAgwqAgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiAgwqAgwqAgdXNiLXJvbGUt
c3dpdGNoOwo+Pgo+PiAgwqAgwqAgcG9ydCB7Cj4+ICDCoCDCoCDCoCDCoCAjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKPj4gIMKgIMKgIMKgIMKgICNzaXplLWNlbGxzID0gPDA+Owo+PiAgwqAgwqAgwqAg
wqAgZHdjM18wX3JvbGVfc3dpdGNoOiBlbmRwb2ludEAwIHsKPj4gIMKgIMKgIMKgIMKgIMKgIMKg
IHJlZyA9IDwwPjsKPj4gIMKgIMKgIMKgIMKgIMKgIMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmdXNi
Y19yb2xlX3N3PjsKPj4gIMKgIMKgIMKgIMKgIH07Cj4+ICDCoCDCoCB9Owo+PiB9Owo+Pgo+PiAm
dGNwaHkwX3VzYjMgewo+PiAgwqAgwqAgb3JpZW50YXRpb24tc3dpdGNoOwo+Pgo+PiAgwqAgwqAg
cG9ydCB7Cj4+ICDCoCDCoCDCoCDCoCB0Y3BoeTBfdHlwZWNfb3JpZW5fc3c6IGVuZHBvaW50IHsK
Pj4gIMKgIMKgIMKgIMKgIMKgIMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmdXNiY19vcmllbl9zdz47
Cj4+ICDCoCDCoCDCoCDCoCB9Owo+PiAgwqAgwqAgfTsKPj4gfTsKPj4KPj4gJnRjcGh5MF9kcCB7
Cj4+ICDCoCDCoCBtb2RlLXN3aXRjaDsKPj4KPj4gIMKgIMKgIHBvcnQgewo+PiAgwqAgwqAgwqAg
wqAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICDCoCDCoCDCoCDCoCAjc2l6ZS1jZWxscyA9IDww
PjsKPj4KPj4gIMKgIMKgIMKgIMKgIHRjcGh5MF90eXBlY19kcDogZW5kcG9pbnRAMCB7Cj4+ICDC
oCDCoCDCoCDCoCDCoCDCoCByZWcgPSA8MD47Cj4+ICDCoCDCoCDCoCDCoCDCoCDCoCByZW1vdGUt
ZW5kcG9pbnQgPSA8JnVzYmNfZHA+Owo+PiAgwqAgwqAgwqAgwqAgfTsKPj4gIMKgIMKgIH07Cj4+
IH07Cj4+Cj4gVGhlIGdlbmVyYWwgaGllcmFyY2h5IGlzIG9rYXksIGp1c3QgbmVlZCB0byBmaXgg
c29tZSBkdHMgY29kaW5nCj4gc3R5bGUgaXNzdWUuCgpUaGFuayB5b3UgZm9yIHlvdXIgZXhwbGFu
YXRpb24uIEkgd2lsbCBmaXggdGhpcyBpbiB2OS4KCgo+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
