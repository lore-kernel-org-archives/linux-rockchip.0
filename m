Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1003AC4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 22:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSZO0KV2YqgyV8R38kGa78KlncSdO1xgxRkpr7L0fUc=; b=KXNwPCl1/tUB68
	/OLSZzeL5SxXRyvrfPStdvi/kVuqeu9fB9aNDP7VpGfsG7Do3QUYwxRu81krLETZ+hKNEEpbjN5fs
	RcRNnzS144/mo4kdRr5v1irqzWcImqL6zttFmL1Tb6YHbG0DRvEFbbBbDPXnwggt8NEGOTs2GFh1E
	5whTpbUXL45DXAkwDkyXBgHq4cQ05IbF/Dpf4LBluDKg5J8x8tUPPWi+P/DmrpigY6rMDknTe9yHT
	2TbT0f4Y0PU4bWOtzs9c3Kj2k+SCYvZO8Vx7vO+QjJxazjGJn/Vf1oAJAb80P9n7Et4LygPQDz7mx
	0e/Pc+yLtVh8LbrZIFkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9uki-002eSZ-2z;
	Sun, 03 Dec 2023 22:15:52 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9ukg-002eRa-0m;
	Sun, 03 Dec 2023 22:15:51 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6ce557298f6so20886b3a.3;
        Sun, 03 Dec 2023 14:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701641744; x=1702246544; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tp4hrKRCxPQEfU5u2oM3FN+8Te5fEZUyhu2s23erNVg=;
        b=L3gLKJW0j9Nq5bb2U2kaCIjsi7cVgnUtPxwOJWPMCnnuMz3OKsS0tnaRg77lZo8co2
         TFiqMzwnkmXeBMx/2hoBTEFa/0IT1OjzC6mR/0bI5PfX56l6U6HU4dBsy8dSSXXqfNnT
         xAJjStZrlWIoXLQ5khzJRKXS3s0GG0EtI9lgM8GauAf2cM5Kqy1lpwxbspCl4ucf7CJC
         wARsY5DzmMyjcDnWgQeiwlz6Ui1/fEaIKSvuGVqq8bwRFy4E2H3996o12Gujg7MU+OdI
         /kJYQJrRgRsf7dcBPLPsRedOfBhO2NbIPIuNneprwNNRPoS0ZoHXqj6b/ajdLi1LzTqj
         sJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701641744; x=1702246544;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tp4hrKRCxPQEfU5u2oM3FN+8Te5fEZUyhu2s23erNVg=;
        b=mYfAzYL8ZbsjmLU/mU4E83gmryecE0yan1f7V0xt5HHU6pJrnnLy4NEf0CQl00J4dN
         gc7ikbFK8W61EIYUqIg5f1GBowRFpaDv4K8BsYuTjwimwTM9piaOnXOQ0VRUIpUxygsK
         8WR6xIVSejv3sh06ads/CjqFNs7Jyd04pWnUg1kYWed0gRXuB/fGD3AHQw2P1YECRFEe
         ZJcyLNAaIeeD+H1sQlrSjz/2GNwHa+zs/0Nbm7Bh84/zsRTilgoJ8+YetOKaMUsvuATv
         VENIUtnf1ckR7eO3+ZeNQaRFB9LQS00X0j+CLoZ7Fb9fqwB2HcB2JiCcOqT5byjUb2qc
         cDIA==
X-Gm-Message-State: AOJu0YwJXaIJ0JXcCcFMVeCMPVPopo4oxTYy+5hnfmrTQQzlbry+9Dfa
	1SOlGzyR/sa3abe3XjKdQqKiuomCNQkH/d3QFMo=
X-Google-Smtp-Source: AGHT+IG9fXsgYtF5Q83KAQ/ZHKML1h06g8JjnFlhn6kr4ka+AxbSdTBrabtFPHHC62d1QbOWDqvRyCFc6ayf+h5bOtc=
X-Received: by 2002:a17:90a:fa8e:b0:286:811c:c3b5 with SMTP id
 cu14-20020a17090afa8e00b00286811cc3b5mr930976pjb.2.1701641743977; Sun, 03 Dec
 2023 14:15:43 -0800 (PST)
MIME-Version: 1.0
References: <20231129092759.242641-1-paul.elder@ideasonboard.com>
 <20231129092759.242641-12-paul.elder@ideasonboard.com> <CAHCN7xLihh_r=zn+2EsqZvsOumeJY52DHmrkVv0+A7Grib8AhQ@mail.gmail.com>
In-Reply-To: <CAHCN7xLihh_r=zn+2EsqZvsOumeJY52DHmrkVv0+A7Grib8AhQ@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 3 Dec 2023 16:15:32 -0600
Message-ID: <CAHCN7xK8prNL8HGUCGpUW0-NLWvCphjGrUz_5D2CpyPFa0vG8Q@mail.gmail.com>
Subject: Re: [PATCH v4 11/11] media: rkisp1: Add UYVY as an output format
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, kieran.bingham@ideasonboard.com, 
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_141550_281935_B728F39C 
X-CRM114-Status: GOOD (  30.21  )
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

T24gU3VuLCBEZWMgMywgMjAyMyBhdCAzOjMy4oCvUE0gQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBOb3YgMjksIDIwMjMgYXQgMzoyOeKAr0FNIFBhdWwg
RWxkZXIgPHBhdWwuZWxkZXJAaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4gPgo+ID4gQWRkIHN1
cHBvcnQgZm9yIFVZVlkgYXMgYW4gb3V0cHV0IGZvcm1hdC4gVGhlIHV2X3N3YXAgYml0IGluIHRo
ZQo+ID4gTUlfWFREX0ZPUk1BVF9DVFJMIHJlZ2lzdGVyIHRoYXQgaXMgdXNlZCBmb3IgdGhlIE5W
IGZvcm1hdHMgZG9lcyBub3QKPiA+IHdvcmsgZm9yIHBhY2tlZCBZVVYgZm9ybWF0cy4gVGh1cywg
VVlWWSBzdXBwb3J0IGlzIGltcGxlbWVudGVkIHZpYQo+ID4gYnl0ZS1zd2FwcGluZy4gVGhpcyBt
ZXRob2QgY2xlYXJseSBkb2VzIG5vdCB3b3JrIGZvciBpbXBsZW1lbnRpbmcKPiA+IHN1cHBvcnQg
Zm9yIFlWWVUgYW5kIFZZVVkuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogUGF1bCBFbGRlciA8cGF1
bC5lbGRlckBpZGVhc29uYm9hcmQuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hh
cnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6
IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiA+
IC0tLQo+ID4gIC4uLi9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYyB8
IDQxICsrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNDEgaW5zZXJ0aW9u
cygrKQo+Cj4KPiBQYXVsLAo+Cj4gSSB0ZXN0ZWQgdGhpcyBwYXRjaCBzZXJpZXMgZnJvbSBvbmUg
b2YgdGhlIG9sZGVyIHN1Ym1pc3Npb25zIGFuZCBJIHdhcwo+IGFibGUgdG8gZ2V0IGl0IHdvcmtp
bmcsIGJ1dCBJIGNvdWxkIG5vdCBnZXQgdGhlIHZpZGVvIHRvIGNhcHR1cmUgdG8KPiB3b3JrIG5v
IG1hdHRlciB3aGF0IHJlc29sdXRpb24gb3IgdmlkZW8gZm9ybWF0IEkgdHJpZWQuICBFYWNoIHRp
bWUsIEkKPiBnZXQgdGhlIHNhbWUgZXJyb3IgbWVzc2FnZTogIHJraXNwMSAzMmUxMDAwMC5pc3A6
IHN0YXJ0IHBpcGVsaW5lCj4gZmFpbGVkIC0zMgo+Cj4gRG8geW91IGhhdmUgYW4gZXhhbXBsZSBv
ZiBob3cgeW91IGNvbmZpZ3VyZWQgdGhlIHBpcGVsaW5lIGFuZCBob3cgeW91Cj4gaW52b2tlZCB0
aGUgdmlkZW8gY2FwdHVyZT8KCkkgaGF2ZSBpdCB3b3JraW5nIG5vdyBidXQgSSBoYWQgdG8gYXBw
bHkgdGhlIHBhdGNoIFsxXSAgcHJvdmlkZWQgYnkKVG9taSBpbiBvcmRlciBmb3IgaXQgdG8gd29y
ayBwcm9wZXJseQoKQ2FuIHlvdSBzZW5kIGFub3RoZXIgcmV2aXNpb24gd2l0aCBoaXMgcGF0Y2gg
aW5jbHVkZWQgaW4gdGhlIHNlcmllcz8KCldpdGggdGhhdCwgeW91IGNhbiBhZGQKClRlc3RlZC1i
eTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+ICNpbXg4bXAtYmVhY29uLWtpdAoKVGhh
bmsgeW91LgoKYWRhbQpbMV0gLSBodHRwczovL2dpdGxhYi5jb20vaWRlYXNvbmJvYXJkL254cC9s
aW51eC8tL2NvbW1pdC9kNjQ3N2ZlNjczYjFjMGQwNWQxMmFlMjFkOGRiOWEwM2IwN2U3ZmVhCgo+
Cj4gdGhhbmtzCj4KPiBhZGFtCj4KPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPiA+IGluZGV4IGEzNTI4
OTMzMDhiNi4uYjUwYjA0NGQyMmFmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYwo+ID4gKysrIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYwo+ID4gQEAgLTk3
LDYgKzk3LDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcmtpc3AxX2NhcHR1cmVfZm10X2NmZyBy
a2lzcDFfbXBfZm10c1tdID0gewo+ID4gICAgICAgICAgICAgICAgIC51dl9zd2FwID0gMCwKPiA+
ICAgICAgICAgICAgICAgICAud3JpdGVfZm9ybWF0ID0gUktJU1AxX01JX0NUUkxfTVBfV1JJVEVf
WVVWSU5ULAo+ID4gICAgICAgICAgICAgICAgIC5tYnVzID0gTUVESUFfQlVTX0ZNVF9ZVVlWOF8y
WDgsCj4gPiArICAgICAgIH0sIHsKPiA+ICsgICAgICAgICAgICAgICAuZm91cmNjID0gVjRMMl9Q
SVhfRk1UX1VZVlksCj4gPiArICAgICAgICAgICAgICAgLnV2X3N3YXAgPSAwLAo+ID4gKyAgICAg
ICAgICAgICAgIC55Y19zd2FwID0gMSwKPiA+ICsgICAgICAgICAgICAgICAud3JpdGVfZm9ybWF0
ID0gUktJU1AxX01JX0NUUkxfTVBfV1JJVEVfWVVWSU5ULAo+ID4gKyAgICAgICAgICAgICAgIC5t
YnVzID0gTUVESUFfQlVTX0ZNVF9ZVVlWOF8yWDgsCj4gPiAgICAgICAgIH0sIHsKPiA+ICAgICAg
ICAgICAgICAgICAuZm91cmNjID0gVjRMMl9QSVhfRk1UX1lVVjQyMlAsCj4gPiAgICAgICAgICAg
ICAgICAgLnV2X3N3YXAgPSAwLAo+ID4gQEAgLTIzMSw2ICsyMzcsMTMgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBya2lzcDFfY2FwdHVyZV9mbXRfY2ZnIHJraXNwMV9zcF9mbXRzW10gPSB7Cj4gPiAg
ICAgICAgICAgICAgICAgLndyaXRlX2Zvcm1hdCA9IFJLSVNQMV9NSV9DVFJMX1NQX1dSSVRFX0lO
VCwKPiA+ICAgICAgICAgICAgICAgICAub3V0cHV0X2Zvcm1hdCA9IFJLSVNQMV9NSV9DVFJMX1NQ
X09VVFBVVF9ZVVY0MjIsCj4gPiAgICAgICAgICAgICAgICAgLm1idXMgPSBNRURJQV9CVVNfRk1U
X1lVWVY4XzJYOCwKPiA+ICsgICAgICAgfSwgewo+ID4gKyAgICAgICAgICAgICAgIC5mb3VyY2Mg
PSBWNEwyX1BJWF9GTVRfVVlWWSwKPiA+ICsgICAgICAgICAgICAgICAudXZfc3dhcCA9IDAsCj4g
PiArICAgICAgICAgICAgICAgLnljX3N3YXAgPSAxLAo+ID4gKyAgICAgICAgICAgICAgIC53cml0
ZV9mb3JtYXQgPSBSS0lTUDFfTUlfQ1RSTF9TUF9XUklURV9JTlQsCj4gPiArICAgICAgICAgICAg
ICAgLm91dHB1dF9mb3JtYXQgPSBSS0lTUDFfTUlfQ1RSTF9TUF9PVVRQVVRfWVVWNDIyLAo+ID4g
KyAgICAgICAgICAgICAgIC5tYnVzID0gTUVESUFfQlVTX0ZNVF9ZVVlWOF8yWDgsCj4gPiAgICAg
ICAgIH0sIHsKPiA+ICAgICAgICAgICAgICAgICAuZm91cmNjID0gVjRMMl9QSVhfRk1UX1lVVjQy
MlAsCj4gPiAgICAgICAgICAgICAgICAgLnV2X3N3YXAgPSAwLAo+ID4gQEAgLTQ2NCw2ICs0Nzcs
MjAgQEAgc3RhdGljIHZvaWQgcmtpc3AxX21wX2NvbmZpZyhzdHJ1Y3Qgcmtpc3AxX2NhcHR1cmUg
KmNhcCkKPiA+ICAgICAgICAgICAgICAgICBya2lzcDFfd3JpdGUocmtpc3AxLCBSS0lTUDFfQ0lG
X01JX1hURF9GT1JNQVRfQ1RSTCwgcmVnKTsKPiA+ICAgICAgICAgfQo+ID4KPiA+ICsgICAgICAg
LyoKPiA+ICsgICAgICAgICogVS9WIHN3YXBwaW5nIHdpdGggdGhlIE1JX1hURF9GT1JNQVRfQ1RS
TCByZWdpc3RlciBvbmx5IHdvcmtzIGZvcgo+ID4gKyAgICAgICAgKiBOVjEyL05WMjEgYW5kIE5W
MTYvTlY2MSwgc28gaW5zdGVhZCB1c2UgYnl0ZSBzd2FwIHRvIHN1cHBvcnQgVVlWWS4KPiA+ICsg
ICAgICAgICogWVZZVSBhbmQgVllVWSBjYW5ub3QgYmUgc3VwcG9ydGVkIHdpdGggdGhpcyBtZXRo
b2QuCj4gPiArICAgICAgICAqLwo+ID4gKyAgICAgICBpZiAocmtpc3AxLT5pbmZvLT5mZWF0dXJl
cyAmIFJLSVNQMV9GRUFUVVJFX01JX09VVFBVVF9BTElHTikgewo+ID4gKyAgICAgICAgICAgICAg
IHJlZyA9IHJraXNwMV9yZWFkKHJraXNwMSwgUktJU1AxX0NJRl9NSV9PVVRQVVRfQUxJR05fRk9S
TUFUKTsKPiA+ICsgICAgICAgICAgICAgICBpZiAoY2FwLT5waXguY2ZnLT55Y19zd2FwKQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgcmVnIHw9IFJLSVNQMV9DSUZfT1VUUFVUX0FMSUdOX0ZP
Uk1BVF9NUF9CWVRFX1NXQVBfQllURVM7Cj4gPiArICAgICAgICAgICAgICAgZWxzZQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgcmVnICY9IH5SS0lTUDFfQ0lGX09VVFBVVF9BTElHTl9GT1JN
QVRfTVBfQllURV9TV0FQX0JZVEVTOwo+ID4gKyAgICAgICAgICAgICAgIHJraXNwMV93cml0ZShy
a2lzcDEsIFJLSVNQMV9DSUZfTUlfT1VUUFVUX0FMSUdOX0ZPUk1BVCwgcmVnKTsKPiA+ICsgICAg
ICAgfQo+ID4gKwo+ID4gICAgICAgICBya2lzcDFfbWlfY29uZmlnX2N0cmwoY2FwKTsKPiA+Cj4g
PiAgICAgICAgIHJlZyA9IHJraXNwMV9yZWFkKHJraXNwMSwgUktJU1AxX0NJRl9NSV9DVFJMKTsK
PiA+IEBAIC01MDcsNiArNTM0LDIwIEBAIHN0YXRpYyB2b2lkIHJraXNwMV9zcF9jb25maWcoc3Ry
dWN0IHJraXNwMV9jYXB0dXJlICpjYXApCj4gPiAgICAgICAgICAgICAgICAgcmtpc3AxX3dyaXRl
KHJraXNwMSwgUktJU1AxX0NJRl9NSV9YVERfRk9STUFUX0NUUkwsIHJlZyk7Cj4gPiAgICAgICAg
IH0KPiA+Cj4gPiArICAgICAgIC8qCj4gPiArICAgICAgICAqIFUvViBzd2FwcGluZyB3aXRoIHRo
ZSBNSV9YVERfRk9STUFUX0NUUkwgcmVnaXN0ZXIgb25seSB3b3JrcyBmb3IKPiA+ICsgICAgICAg
ICogTlYxMi9OVjIxIGFuZCBOVjE2L05WNjEsIHNvIGluc3RlYWQgdXNlIGJ5dGUgc3dhcCB0byBz
dXBwb3J0IFVZVlkuCj4gPiArICAgICAgICAqIFlWWVUgYW5kIFZZVVkgY2Fubm90IGJlIHN1cHBv
cnRlZCB3aXRoIHRoaXMgbWV0aG9kLgo+ID4gKyAgICAgICAgKi8KPiA+ICsgICAgICAgaWYgKHJr
aXNwMS0+aW5mby0+ZmVhdHVyZXMgJiBSS0lTUDFfRkVBVFVSRV9NSV9PVVRQVVRfQUxJR04pIHsK
PiA+ICsgICAgICAgICAgICAgICByZWcgPSBya2lzcDFfcmVhZChya2lzcDEsIFJLSVNQMV9DSUZf
TUlfT1VUUFVUX0FMSUdOX0ZPUk1BVCk7Cj4gPiArICAgICAgICAgICAgICAgaWYgKGNhcC0+cGl4
LmNmZy0+eWNfc3dhcCkKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZyB8PSBSS0lTUDFf
Q0lGX09VVFBVVF9BTElHTl9GT1JNQVRfU1BfQllURV9TV0FQX0JZVEVTOwo+ID4gKyAgICAgICAg
ICAgICAgIGVsc2UKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZyAmPSB+UktJU1AxX0NJ
Rl9PVVRQVVRfQUxJR05fRk9STUFUX1NQX0JZVEVfU1dBUF9CWVRFUzsKPiA+ICsgICAgICAgICAg
ICAgICBya2lzcDFfd3JpdGUocmtpc3AxLCBSS0lTUDFfQ0lGX01JX09VVFBVVF9BTElHTl9GT1JN
QVQsIHJlZyk7Cj4gPiArICAgICAgIH0KPiA+ICsKPiA+ICAgICAgICAgcmtpc3AxX21pX2NvbmZp
Z19jdHJsKGNhcCk7Cj4gPgo+ID4gICAgICAgICBtaV9jdHJsID0gcmtpc3AxX3JlYWQocmtpc3Ax
LCBSS0lTUDFfQ0lGX01JX0NUUkwpOwo+ID4gLS0KPiA+IDIuMzkuMgo+ID4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
