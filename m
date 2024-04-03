Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA88DCD128A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 14:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiJdGXWQEhvWfHZCktn9pTMZ+m7+Dy7QEcHFF+BnPnM=; b=DoTYPyGflWVtFV
	Q8+3Nw/iz/zEFzFpm6Vz0C478E5swirrs+uCuUt0fW0RL4yxJrvszTJXKLCfo8lC4eyqLHtlLxqgp
	jqdU/HphOCN8y9U6ZkUEd1lv6kjaFWRq6iER5o3lzu0Me+aBobUlD1z+VwFWG2uJhlj3hqQPJYxcR
	MCMr2hSXCZpAOvddFH3KrRwatiuAY1BJhwWb5gJFen1jt0qsL15f62B9QOrm1M6fDYdVoN7oSk7Yd
	byRybT5hl0u89g2BQTapH8j0koPyh3bjkApGHnruAjC94DtoBsdNRrZpqOc7+tA67uBsNObSk5Rsc
	tgS14nag4BehqUR4424w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs21n-0000000GZo4-2loD;
	Wed, 03 Apr 2024 14:55:51 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs21k-0000000GZmx-0xfu;
	Wed, 03 Apr 2024 14:55:49 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-dd045349d42so5823277276.2;
        Wed, 03 Apr 2024 07:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712156145; x=1712760945; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vdppnCiN5tX2a4wbdOB3yr5PBMxRl9CK0no4lPed/pU=;
        b=W1iDMOOTX/TEkQvqw73cpBPhmv2BEYF8puO3IlOE2Gk4wW5oLcv7xMGlgxa1GogmE8
         gKd4el+LfFeU0ZqsuEx+qfeU8IdEaaOi7RcJuhakhyTb6l+li2o31AHTq2+u1u0c/3Ct
         sls5fGDMf7g/IgpUJjAD83LXwNSRd8EmItxjIWEj2KR+oRod2mPUmtS1u1WEnHh8aNsR
         eLGw5U6bmCkLeMghP68iYmWWLkMRtfW5gyh9FO5Qa1qursiBRw+H8OCC5bfwnUUB+mEI
         OuetIGimQi7/9qoyQZIDl3Bx6chp5MEbWNdlzTrFLDTteU5dXBJ6vcaj3ijO4dO0Ll4+
         hfew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712156145; x=1712760945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vdppnCiN5tX2a4wbdOB3yr5PBMxRl9CK0no4lPed/pU=;
        b=dHGzCgV/9hZnohHjwzd/khAgBNBM/7w/rG/2y3R9d5Vo5QrhtkUUeKhHTZ+c7mW5oX
         AMvZZNLrw7uD3xl19h6aTLzWxlJd1+KYKuJI+fHhNA1KHeXGlMfU+6aiUCUUwK2lGXob
         P4D5uuQVINl1FnBRiFSN9Fcz4OHHchElvT0T/4rSMPQU1iwv8nuLKz8Gqy+I5EvqLJzi
         vLz6LqmJw5L4wlM8oAqLNiNXYNTbnz9yPgw2I1TY8ugJftiCqfFhmmVAgOTzoa8Ck9DG
         4fOo2FViNZWAyiHPvZ+YBTt5Fx3skd1Gz3zlW4nLHCctejmN0x1JBVo4y+5u9LL4rKfz
         A/KA==
X-Forwarded-Encrypted: i=1; AJvYcCVc0mP+w32is30YQaBr3Bm/LxEmpFPTZgxqRHxTKhMIP81sl7uG6MppeSfZqxCtDkjxDwX1Wz0Q8Uu7P/69AwFo4vRLbUgFMGClxqgJ+iY/i8xWP6w9swYLFYfEssAcYS15IwZJkpT/UO+63dapzgc1c0X0iyXCwrU=
X-Gm-Message-State: AOJu0YwDhNY3+95YYNXsRKLFL/yFSLkylWyGOKihGpEiBCPyDVtAFRXZ
	xap0nrRh2CDM+oBE8qCQ/cmNV/QFruUu5mN5GyuDNdUzbmMeZkWyT2+Wmm+osyUJQ/QT0NFOJvA
	6TDW9a9wCZXFGRpQJvNpKW5oQh8A=
X-Google-Smtp-Source: AGHT+IF93HYpJit0b2L+Msi+ZX3Cwa21oRLYpjSf+q3irAbdFS+IP1VQ1uP65LDf6uGuqjsAhRKQMgMDICSnHpjbQiU=
X-Received: by 2002:a25:b793:0:b0:dcf:ad31:57c9 with SMTP id
 n19-20020a25b793000000b00dcfad3157c9mr13287436ybh.0.1712156145597; Wed, 03
 Apr 2024 07:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <20240403144508.489835-1-rick.wertenbroek@gmail.com>
In-Reply-To: <20240403144508.489835-1-rick.wertenbroek@gmail.com>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Wed, 3 Apr 2024 16:55:10 +0200
Message-ID: <CAAEEuhpBWRm4ODQf1eHYUvncZrDC5WUGe0sMMaCFJaUM0dn_1Q@mail.gmail.com>
Subject: Re: [PATCH] PCI: rockchip-ep: Remove wrong mask on subsys_vendor_id
To: rick.wertenbroek@heig-vd.ch
Cc: dlemoal@kernel.org, stable@vger.kernel.org, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_075548_328201_C1A9814E 
X-CRM114-Status: GOOD (  20.90  )
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

T24gV2VkLCBBcHIgMywgMjAyNCBhdCA0OjQ14oCvUE0gUmljayBXZXJ0ZW5icm9lawo8cmljay53
ZXJ0ZW5icm9la0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gUmVtb3ZlIHdyb25nIG1hc2sgb24gc3Vi
c3lzX3ZlbmRvcl9pZC4gQm90aCB0aGUgVmVuZG9yIElEIGFuZCBTdWJzeXN0ZW0KPiBWZW5kb3Ig
SUQgYXJlIHUxNiB2YXJpYWJsZXMgYW5kIGFyZSB3cml0dGVuIHRvIGEgdTMyIHJlZ2lzdGVyIG9m
IHRoZQo+IGNvbnRyb2xsZXIuIFRoZSBTdWJzeXN0ZW0gVmVuZG9yIElEIHdhcyBhbHdheXMgMCBi
ZWNhdXNlIHRoZSB1MTYgdmFsdWUKPiB3YXMgbWFza2VkIGluY29ycmVjdGx5IHdpdGggR0VOTUFT
SygzMSwxNikgcmVzdWx0aW5nIGluIGFsbCBsb3dlciAxNgo+IGJpdHMgYmVpbmcgc2V0IHRvIDAg
cHJpb3IgdG8gdGhlIHNoaWZ0Lgo+Cj4gUmVtb3ZlIGJvdGggbWFza3MgYXMgdGhleSBhcmUgdW5u
ZWNlc3NhcnkgYW5kIHNldCB0aGUgcmVnaXN0ZXIgY29ycmVjdGx5Cj4gaS5lLiwgdGhlIGxvd2Vy
IDE2LWJpdHMgYXJlIHRoZSBWZW5kb3IgSUQgYW5kIHRoZSB1cHBlciAxNi1iaXRzIGFyZSB0aGUK
PiBTdWJzeXN0ZW0gVmVuZG9yIElELgo+Cj4gVGhpcyBpcyBkb2N1bWVudGVkIGluIHRoZSBSSzMz
OTkgVFJNIHNlY3Rpb24gMTcuNi43LjEuMTcKPgo+IEZpeGVzOiBjZjU5MGIwNzgzOTEgKCJQQ0k6
IHJvY2tjaGlwOiBBZGQgRVAgZHJpdmVyIGZvciBSb2NrY2hpcCBQQ0llIGNvbnRyb2xsZXIiKQo+
IFNpZ25lZC1vZmYtYnk6IFJpY2sgV2VydGVuYnJvZWsgPHJpY2sud2VydGVuYnJvZWtAZ21haWwu
Y29tPgo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIHwgNyArKystLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+IGluZGV4IGM5MDQ2ZTk3YTFkMi4uMzdkNGJjYjhiZDVi
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5j
Cj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiBAQCAt
OTgsMTAgKzk4LDkgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX3dyaXRlX2hlYWRlcihz
dHJ1Y3QgcGNpX2VwYyAqZXBjLCB1OCBmbiwgdTggdmZuLAo+Cj4gICAgICAgICAvKiBBbGwgZnVu
Y3Rpb25zIHNoYXJlIHRoZSBzYW1lIHZlbmRvciBJRCB3aXRoIGZ1bmN0aW9uIDAgKi8KPiAgICAg
ICAgIGlmIChmbiA9PSAwKSB7Cj4gLSAgICAgICAgICAgICAgIHUzMiB2aWRfcmVncyA9IChoZHIt
PnZlbmRvcmlkICYgR0VOTUFTSygxNSwgMCkpIHwKPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKGhkci0+c3Vic3lzX3ZlbmRvcl9pZCAmIEdFTk1BU0soMzEsIDE2KSkgPDwgMTY7Cj4g
LQo+IC0gICAgICAgICAgICAgICByb2NrY2hpcF9wY2llX3dyaXRlKHJvY2tjaGlwLCB2aWRfcmVn
cywKPiArICAgICAgICAgICAgICAgcm9ja2NoaXBfcGNpZV93cml0ZShyb2NrY2hpcCwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoZHItPnZlbmRvcmlkIHwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoZHItPnN1YnN5c192ZW5kb3JfaWQgPDwgMTYs
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUENJRV9DT1JFX0NPTkZJR19W
RU5ET1IpOwo+ICAgICAgICAgfQo+Cj4gLS0KPiAyLjI1LjEKPgoKVGhpcyBwYXRjaCB3YXMgdGVz
dGVkIG9uIGxpbnV4IG5leHQtMjAyNDA0MDMuCgpUaGUgUENJIGVuZHBvaW50IHRlc3QgZnVuY3Rp
b24gd2FzIHVzZWQgYW5kIGFuIGFyYml0cmFyeSB2YWx1ZSBlLmcuLCAweDEyMzQKd2FzIHdyaXR0
ZW4gdG8gL3N5cy9rZXJuZWwvY29uZmlnL3BjaV9lcC9mdW5jdGlvbnMvcGNpX2VwZl90ZXN0L3Bj
aV9lcGZfdGVzdC4wL3N1YnN5c192ZW5kb3JfaWQKClRoaXMgdmFsdWUgd2FzIHRoZW4gdmVyaWZp
ZWQgd2l0aCBsc3BjaSAteCAvIGxzcGNpIC12IG9uIGEgaG9zdApjb21wdXRlciBhY3RpbmcgYXMg
UENJIHJvb3QgY29tcGxleC4KCkNoZWVycywKUmljawoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
