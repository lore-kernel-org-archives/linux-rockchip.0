Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1C7EE9A03B
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Feb 2026 07:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a215gUnYHWawoMP2r7a3KCeOuJ1ss1Yyc+sZZDKtbCs=; b=Qm9VezJnwGFsfa
	rNOTuYz8v/Hl6IT+Pkb7zkkBeVQY96bdLqXPJP4ZU/mP/9fsDmaGwpKt6RlR1o6ZLe6C9hZ1umJwU
	N4NHaXw77d+UYObOs2khDTpNl4EajbLeDwCDm83BIIdAbnnPXFgHGFQuekYskuTzcCE/ttJbaVPgy
	JzhhmqBprzSkZxUbUCvz5akIxRoGwtg61WTKX/5xRKQllOPsrQqZFDZ5i/NfFl9VGMLltL/wozKtQ
	PzG5YX2x7j2MDfI4YoQzx9+s1JVDx5lFNGdYDYaxLTdU3wDl+ypTBSqbrhQVFto/W9HVPJ+kEt4at
	goQrC2tDUVUEkCnlnJdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vscLW-00000009QaN-0awS;
	Wed, 18 Feb 2026 07:51:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vscLT-00000009QZ9-48KB
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Feb 2026 07:51:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F280A444E5
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Feb 2026 07:51:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5125C19421
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Feb 2026 07:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771401098;
	bh=4iOIMJwTfTlhk2X+SSFRPxdpOOMqvgJljSOYKrmpsX0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=poCnTeb0EiRLHjnZHKa3OTdzzF0Lor2Dktc8/g+0fzCK21yY785y2j78TDy0ydbAG
	 4atxiINHsZ/XtLw1bOnH9CMZ92SytlY9EwvvUIWnkbiGRDqynwvYGq7BDvluwnqZEY
	 W5PzOaVduDO6ZCZLchIfQdTTvAdh8zPxEcyhUkeOeTH7H6LRpXhEXQL+a3fmp2Y/eF
	 pu8uxTfsWrKLFEdaDn/WUEhtIELUzVd57DoXrbhkULNbQlk2+cysxvc4aQul5XxLDM
	 aVhAqENG+/zXyQoBomqTBZwhLMICyAmGGmsJjaZZph1pPuJdp2piYY+QA1epHg8WZL
	 /up+Yi62llWxA==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-388126f79bcso35911941fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Feb 2026 23:51:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWttKF2K+eGbodsV9zLBCemUFSrnd4lobIopSb/rQiiMFdjzANn5PCn1P49gytYN3XKNwivmlzCvDqV16CRvg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxbZ+RYAtV41M+FqDPSbb5PtHvd2nY/AznleDlD9FNLM8z8ttok
	TOTKwpN22dMHpa0w0MjQEO3IZzgAnP0PX3ctymA5AVjE9EHjSIWXUeZC2y9oyyYgeYgx7fHXlwp
	Mp9Csvx6exp/NmM6sw4I4YBNUBh+a8EQ=
X-Received: by 2002:a2e:b896:0:b0:382:f78d:a0c with SMTP id
 38308e7fff4ca-38846df21a4mr3400331fa.21.1771401097098; Tue, 17 Feb 2026
 23:51:37 -0800 (PST)
MIME-Version: 1.0
References: <20260216-rkcif-fixes-v1-0-b16db20b6d68@collabora.com>
In-Reply-To: <20260216-rkcif-fixes-v1-0-b16db20b6d68@collabora.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 18 Feb 2026 15:51:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v65F9OHNdLA2e3HXNiHEUQyW3-zjQGRZE_w5jU6+w5TbMw@mail.gmail.com>
X-Gm-Features: AaiRm51oWyNatKqHz1nRPBR6_xQMPfJe9Uf0NpOZA7cz-bzmXYkXqyvq3n9ru28
Message-ID: <CAGb2v65F9OHNdLA2e3HXNiHEUQyW3-zjQGRZE_w5jU6+w5TbMw@mail.gmail.com>
Subject: Re: [PATCH 0/2] media: rockchip: rkcif: various fixes
To: michael.riesch@collabora.com
Cc: Dan Carpenter <dan.carpenter@linaro.org>, Paul Elder <paul.elder@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mehdi Djait <mehdi.djait@linux.intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Hans Verkuil <hverkuil+cisco@kernel.org>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Collabora Kernel Team <kernel@collabora.com>, stable@kernel.org, linux-media@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_235140_059001_C284DA6A 
X-CRM114-Status: GOOD (  16.60  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBGZWIgMTYsIDIwMjYgYXQgOTo1MOKAr1BNIE1pY2hhZWwgUmllc2NoIHZpYSBCNCBS
ZWxheQo8ZGV2bnVsbCttaWNoYWVsLnJpZXNjaC5jb2xsYWJvcmEuY29tQGtlcm5lbC5vcmc+IHdy
b3RlOgo+Cj4gSGFiaWRlcmUsCj4KPiBUaGlzIHNlcmllcyBjb250YWlucwo+Cj4gIDEpIGEgcmUt
c3BpbiBvZiBEYW4ncyBwYXRjaCB0aGF0IGZpeGVzIHNvbWUgbW9yZSBzdHVwaWQgb2ZmLWJ5LW9u
ZSBpc3N1ZXMuCj4gICAgIFRoaXMgcGF0Y2ggaGFzIGJlZW4gYXJvdW5kIG9uIHRoZSBsaXN0IGZv
ciBzb21lIHRpbWUsIGJ1dCBhcHBhcmVudGx5Cj4gICAgIGhhcyBub3QgYmVlbiBhcHBsaWVkIHll
dC4KPiAgMikgYSBmaXggdGhhdCBtYWtlcyB0aGUgRE1BIGFic3RyYWN0aW9uIHJlc3BlY3QgdGhl
IG1pbmltdW0gbnVtYmVyIG9mCj4gICAgIGJ1ZmZlcnMgcmVxdWlyZW1lbnQKPgo+IEJlc3QgcmVn
YXJkcywKPiBNaWNoYWVsCj4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFl
bC5yaWVzY2hAY29sbGFib3JhLmNvbT4KClRoaXMgc2VyaWVzLCBhbG9uZyB3aXRoIHRoZSBtaW5v
ciBmaXh1cCBmb3IgcGF0Y2ggMiwgbWFrZXMgdmlkZW8gY2FwdHVyZQpvbiBteSBSb2NrIDNBIHcv
IElNWDIxOSBmcm9tIGEgUmFzcGJlcnJ5IFBpIHYyIGNhbWVyYSBtb2R1bGUgcnVuLgpQcmV2aW91
c2x5IGl0IHdvdWxkIGZhaWwgdG8gcXVldWUgYnVmZmVycy4KCgpUZXN0ZWQtYnk6IENoZW4tWXUg
VHNhaSA8d2Vuc0BrZXJuZWwub3JnPgoKPiAtLS0KPiBEYW4gQ2FycGVudGVyICgxKToKPiAgICAg
ICBtZWRpYTogcm9ja2NoaXA6IHJrY2lmOiBmaXggb2ZmIGJ5IG9uZSBidWdzCj4KPiBNaWNoYWVs
IFJpZXNjaCAoMSk6Cj4gICAgICAgbWVkaWE6IHJvY2tjaGlwOiBya2NpZjogY29tcGx5IHdpdGgg
bWluaW11bSBudW1iZXIgb2YgYnVmZmVycyByZXF1aXJlbWVudAo+Cj4gIC4uLi9wbGF0Zm9ybS9y
b2NrY2hpcC9ya2NpZi9ya2NpZi1jYXB0dXJlLW1pcGkuYyAgIHwgMTAgKysrLS0tCj4gIC4uLi9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2NpZi9ya2NpZi1zdHJlYW0uYyAgIHwgNDEgKysrKysr
KysrKystLS0tLS0tLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDI1
IGRlbGV0aW9ucygtKQo+IC0tLQo+IGJhc2UtY29tbWl0OiBjODI0MzQ1Mjg4ZDExZTI2OWNlNDFi
MzZjMTA1NzE1YmMyMjg2MDUwCj4gY2hhbmdlLWlkOiAyMDI2MDIxNi1ya2NpZi1maXhlcy1iZGQ5
ZDNjN2U0YjAKPgo+IEJlc3QgcmVnYXJkcywKPiAtLQo+IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVs
LnJpZXNjaEBjb2xsYWJvcmEuY29tPgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
