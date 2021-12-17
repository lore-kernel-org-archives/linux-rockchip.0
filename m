Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B432C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 18:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQivct61h5/vEXCjRkCX6ruoXwDq9AHw+vWFHw1ASGQ=; b=AB9Q5/sjbjTQDq
	/x4mn7ckdK/wxBGnf5Ntuya3ygpRmHw+0JjK6VELhz5fGN0VhZsovwflgh4v4UPi/1ib4ywtYzV+d
	jrOSq6z5GvKD3cn+4uSD4/pFkApsz+MpxfKsP0ywbVTbmuTqnC9GHVGSGHWKySSID98h+sQTRIZr0
	AFrmxto9eTdlGzltvqUJ9H9zSediRZSjP+dIwqUKv/Rbr/rqcAm3SKgfjU6QLBa5iiyNu9O94rM4U
	/ukEMN5JaabK2+mFgW2hsYdZfAHFJW7gI+rDszoa8qthLnFgsfDsrBDiqnLa8+KDRlM3UHr1/6pBB
	j1f8xXstApqP6Fl/GAiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myICu-00Bwd0-6x; Fri, 17 Dec 2021 18:43:52 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myHmE-00BkAq-Od
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 18:16:20 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id v64so8840880ybi.5
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Dec 2021 10:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=INj4rN0A/6Jb71uPWpLzYSllBxhC8CfxjBxGNm12ZbM=;
 b=Hb/CFhAlMCEKOAb4Nc9zHkTNxIpikKk8A9CMgE5WFTQtVwYA5C57sBDSWVMzZtVgxd
 Zf5b9VTFBjlxvPWSj+wfs1lVkzxlQdc7Kbmg2lJuGFuPW/WWL+PkDyV3qDXZhdRp1GdH
 12/aeL5zp25qWdOvvvTNS7WOhCrdtHkDfwD2PZj0kX4u1qMEpgdwgofCLXVdZMBDy+MI
 uAsid/M+AIWEkyJknkOSA4vWb4hQUFXfzBtQ9ur1eQG0Q5wGS4UpOp42aIZepm7RiKTI
 0hL+QCNiAU0mMCOvztFKwhMHAWT3+vngmeXEq9A216qdeFzOXJ1chY3bWr6VMjg0BwRD
 5T7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=INj4rN0A/6Jb71uPWpLzYSllBxhC8CfxjBxGNm12ZbM=;
 b=gt28Pm2O8ZuKEhS+ikfcV1houNA5Us/5ttsSse0oniGDUFRnPTEkERy+Tzx2kFuvex
 xI2Nh4UNS59x7fc68HwC5ylLJ+fBI0FctUgQuz1vkqop/sLKwh0BiczXeb8kc/gf/DNb
 nYuWDTmbPGuUALooCaM700w2jDLi90gvcmpeIr/6e6Gx+Zskx0iCgVdPNwekYxi1G5Wa
 MI7mwBkeiCY4JEBaIhijvApkdvbe4kNHRvwjMAtyfHo8Vm0Xjburi7RlX/EcokdG1DYv
 QE+MyJ977mhcC8aDm5/KlGAHjUoV0jQWrIWat8A1Oo2jV/y3GSfx4DRv0cJvnOMTDl1J
 BP+w==
X-Gm-Message-State: AOAM531h4OwOERdMv03hTUN3SiUfW3z1C46KWQaUGNTGSRF5icW8peaZ
 HaA214f20Dg7YG+JJfD5j8E6sKUgXgYyganJr/4=
X-Google-Smtp-Source: ABdhPJx5rXitpkARcCH4JuL/HI9P91U6jCSOUNxq95ERJAU77IJ3uXXkNvtL5cZkD6Yx0lCkzlJeAY40UNMh5CYA/Lc=
X-Received: by 2002:a25:4156:: with SMTP id o83mr5615173yba.216.1639764977118; 
 Fri, 17 Dec 2021 10:16:17 -0800 (PST)
MIME-Version: 1.0
References: <20211217145544.341617-1-pgwipeout@gmail.com>
 <2bebe0ae-27df-f75d-97d6-2e4d2dd032b0@gmail.com>
In-Reply-To: <2bebe0ae-27df-f75d-97d6-2e4d2dd032b0@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 17 Dec 2021 13:16:05 -0500
Message-ID: <CAMdYzYq=2G1bvu9M_DR0vdQDtcvVBhQFRPTNKo1ySFrMZOk=jg@mail.gmail.com>
Subject: Re: [PATCH v2] mfd: rk808: add reboot support to rk808.c
To: Dmitry Osipenko <digetx@gmail.com>
Cc: Lee Jones <lee.jones@linaro.org>, Robin Murphy <robin.murphy@arm.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_101618_880785_982F9020 
X-CRM114-Status: GOOD (  36.21  )
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

T24gRnJpLCBEZWMgMTcsIDIwMjEgYXQgMTA6MjkgQU0gRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhA
Z21haWwuY29tPiB3cm90ZToKPgo+IDE3LjEyLjIwMjEgMTc6NTUsIFBldGVyIEdlaXMg0L/QuNGI
0LXRgjoKPiA+IFRoaXMgYWRkcyByZWJvb3Qgc3VwcG9ydCB0byB0aGUgcms4MDhvIHBtaWMgZHJp
dmVyIGFuZCBlbmFibGVzIGl0IGZvcgo+ID4gdGhlIHJrODA5IGFuZCByazgxNyBkZXZpY2VzLgo+
ID4gVGhpcyBvbmx5IGVuYWJsZXMgaWYgdGhlIHJvY2tjaGlwLHN5c3RlbS1wb3dlci1jb250cm9s
bGVyIGZsYWcgaXMgc2V0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdlaXMgPHBnd2lw
ZW91dEBnbWFpbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFu
ay13QHB1YmxpYy1maWxlcy5kZT4KPiA+IC0tLQo+ID4gVGhpcyBwYXRjaCB3YXMgY3JlYXRlZCB0
byBhZGRyZXNzIGlzc3VlcyB3aXRoIHBzY2ktcmVzZXQgb24gcmszNTZ4Cj4gPiBjaGlwcy4gVW50
aWwgdGhlIHJrMzU2eCBzZXJpZXMgQVRGIG9wZW4gc291cmNlIGNvZGUgaXMgcmVsZWFzZWQgc28g
d2UKPiA+IGNhbiBmaXggdGhlIGlzc3VlIGF0IHRoZSBzb3VyY2UsIHRoaXMgaXMgdGhlIG9ubHkg
d2F5IHRvIGVuc3VyZSByZWxpYWJsZQo+ID4gcmVzZXR0aW5nIG9uIGRldmljZXMgdXNpbmcgdGhl
c2UgY2hpcHMuCj4gPgo+ID4gQWZ0ZXIgdGVzdGluZyB0aGUgcms4MDggKHRoYW5rcyBSb2JpbiEp
LCBpdCB3YXMgZm91bmQgREVWX09GRl9SU1QgZG9lcwo+ID4gbm90IHJlc2V0IHRoZSBQTUlDIHRv
IGEgcG93ZXIgb24gc3RhdGUuIFNpbmNlIHRoZSByazgwNSBhbmQgcms4MTggbWF0Y2gKPiA+IHRo
aXMgcmVnaXN0ZXIgbGF5b3V0LCBJJ20gcmVtb3Zpbmcgc3VwcG9ydCBmb3IgYWxsIHRocmVlIGlu
IHRoZSB2Mi4KPiA+IEl0IG1heSBiZSBwb3NzaWJsZSB0byBhZGQgc3VwcG9ydCB0byB0aGVtIHVz
aW5nIGFuIFJUQyB3YWtldXAsIGJ1dCB0aGF0Cj4gPiBoYXMgbm90IGJlZW4gZXhwbG9yZWQgYW5k
IGlzIG91dHNpZGUgdGhlIHNjb3BlIG9mIHRoaXMgcGF0Y2guCj4gPgo+ID4gQ2hhbmdlbG9nOgo+
ID4gVjI6Cj4gPiAtIFNxdWFzaCB0aGUgcGF0Y2ggZnJvbSBGcmFuayBXdW5kZXJsaWNoIGZvciBy
azgwOSBzdXBwb3J0Lgo+ID4gLSBSZW1vdmUgc3VwcG9ydCBmb3IgdGhlIHJrODA1LCByazgwOCwg
YW5kIHJrODE4IGRldmljZXMuCj4gPiAtIE9ubHkgcmVnaXN0ZXIgdGhlIHJlc2V0IGhhbmRsZXIg
Zm9yIHN1cHBvcnRlZCBkZXZpY2VzLgo+ID4gLSBSZW1vdmUgdW5uZWNlc3NhcnkgZGV2X2VyciBh
bmQgZGV2X3dhcm4gc3RhdGVtZW50cy4KPiA+IC0gUmVnaXN0ZXIgdGhlIHJlc2V0IGhhbmRsZXIg
ZGlyZWN0bHkKPiA+Cj4gPiAgZHJpdmVycy9tZmQvcms4MDguYyAgICAgICB8IDQzICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIGluY2x1ZGUvbGludXgvbWZkL3Jr
ODA4LmggfCAgMSArCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCj4gLi4u
Cj4gPiArc3RhdGljIHN0cnVjdCBub3RpZmllcl9ibG9jayByazgwOF9yZXN0YXJ0X2hhbmRsZXIg
PSB7Cj4gPiArICAgICAubm90aWZpZXJfY2FsbCA9IHJrODA4X3Jlc3RhcnRfbm90aWZ5LAo+ID4g
KyAgICAgLnByaW9yaXR5ID0gMjU1LAo+ID4gK307Cj4KPiBIZWxsbyEKPgo+IFBsZWFzZSB1c2Ug
dGhlIGRlZmF1bHQgMTI4IHByaW9yaXR5IGlmIHRoZXJlIGFyZSBubyBvdGhlciBjb25mbGljdGlu
Zwo+IGhhbmRsZXJzIG9uIHRoaXMgUksuCgpVbmZvcnR1bmF0ZWx5IHRoZSBwc2NpLXJlYm9vdCBo
YW5kbGVyIGlzIHNldCB0byAxMjksIEknbGwgYWRqdXN0IHRoaXMKdG8gMTkyIHdoaWNoIGlzIGlu
IGxpbmUgd2l0aCBvdGhlciBQTUlDIHJlYm9vdCBkcml2ZXJzLgoKPgo+ID4gIHN0YXRpYyB2b2lk
IHJrOHh4X3NodXRkb3duKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gPiAgewo+ID4gICAg
ICAgc3RydWN0IHJrODA4ICpyazgwOCA9IGkyY19nZXRfY2xpZW50ZGF0YShjbGllbnQpOwo+ID4g
QEAgLTcyNyw2ICs3NTcsMTkgQEAgc3RhdGljIGludCByazgwOF9wcm9iZShzdHJ1Y3QgaTJjX2Ns
aWVudCAqY2xpZW50LAo+ID4gICAgICAgaWYgKG9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwgInJv
Y2tjaGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyIikpIHsKPiA+ICAgICAgICAgICAgICAgcms4
MDhfaTJjX2NsaWVudCA9IGNsaWVudDsKPiA+ICAgICAgICAgICAgICAgcG1fcG93ZXJfb2ZmID0g
cms4MDhfcG1fcG93ZXJfb2ZmOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBzd2l0Y2ggKHJrODA4
LT52YXJpYW50KSB7Cj4gPiArICAgICAgICAgICAgIGNhc2UgUks4MDlfSUQ6Cj4gPiArICAgICAg
ICAgICAgIGNhc2UgUks4MTdfSUQ6Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0ID0gcmVn
aXN0ZXJfcmVzdGFydF9oYW5kbGVyKCZyazgwOF9yZXN0YXJ0X2hhbmRsZXIpOwo+Cj4gVGhlcmUg
aXMgbm8gY29ycmVzcG9uZGluZyB1bnJlZ2lzdGVyX3Jlc3RhcnRfaGFuZGxlcigpLCB3aGljaCB5
b3Ugc2hvdWxkCj4gYWRkIHRvIHJrODA4X3JlbW92ZSgpLiBPdGhlcndpc2Uga2VybmVsIHdpbGwg
Y3Jhc2ggb24gcmVib290IGlmIHlvdSdsbAo+IHVubG9hZCB0aGlzIGRyaXZlciBtb2R1bGUuCgpU
aGFua3MsIGFkZGVkIQoKPgo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gKyAg
ICAgICAgICAgICBkZWZhdWx0Ogo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9pbmZvKCZj
bGllbnQtPmRldiwgInBtaWMgY29udHJvbGxlZCBib2FyZCByZXNldCBub3Qgc3VwcG9ydGVkXG4i
KTsKPgo+IEknZCBzZXQgcmV0PTAgZXhwbGljaXRseSBoZXJlLiBMYXRlciBvbiBzb21lYm9keSBt
YXkgY2hhbmdlIHRoZSBjb2RlIGFuZAo+IHJldCB3b24ndCBiZSB6ZXJvIGFueW1vcmUsIHRoaXMg
aXMgbm90IGFuIHVuY29tbW9uIHRyb3VibGUgaW4ga2VybmVsLgoKSXQgdG9vayBtZSBhIG1vbWVu
dCB0byBzZWUgdGhlIGxvZ2ljIGhlcmUsIGJ1dCBJIHVuZGVyc3RhbmQgaXQgbm93LgoKPgo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArCj4g
PiArICAgICAgICAgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgICAgICAgICAgZGV2X2Vy
cigmY2xpZW50LT5kZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgcmVzdGFydCBoYW5kbGVyLCAlZFxu
IiwgcmV0KTsKPgo+Cj4KClRoYW5rIHlvdSBmb3IgdGhlIHJldmlldy4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
