Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4D95C64ED6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 11:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3J7+DYF33kiw50xO+mux6o9/D0LC75A2hUcnUL//kOk=; b=IuVtz1bJA6w+IB
	nSxCfoWcbcMvbg3Nld9wUS5Mudq4Cg0vruKC31kaAEJ/LLgCXl0Jtj5PuXeVktovDOGOMsBsVfNsM
	dol6xUsgINc377g/R49W6J6ImTy7B+iFeoQgzKxaDBhzpLWEnuVLzmZr0MFDZDdN0QDpk+NEe5fJE
	1KzSJnmafMfTYrOQyiNVS7YtXOkUVDKFyvVXXAFnIDOYfhPeW5Keu002DrQFugC9BAi1xTeQ+B/UL
	hG/DsB5wW3iqFbIzZLar5unPp+sKV3Hlmys0oCDcZ5AF3YClDCeyAARn06XH9eXU8wyteI0xX7otF
	FQU0UGgQCp6CcfmpWoPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWy6z-00CyLC-GS; Tue, 28 Feb 2023 11:25:37 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWy6u-00CyHT-KS
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 11:25:35 +0000
Received: by mail-pg1-x52f.google.com with SMTP id q189so5401883pga.9
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Feb 2023 03:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YSt/wO7XSIyNtS1D8q6gqRP/ksadQMSkTlr22kMpteE=;
        b=DleE+djUNCUoLG/L/VRCp5h/HcnGLjcJ/0hTQ8J7bUTpBDYSBZV8jpJhXK3QtGEaV6
         g/EtTEmSu4vaszclIOl4f+tcX16HiPMIbww/80W6SwWC/dILQ7HFnJUxGyi1iseLcH3Z
         LfHWV7iIsgOwgzomKDvUU6K3M/V0UJ0CFZHJPKpvFSU+EFdlRlS/Cdzpqd+mtxE3SEu5
         mKe3E38R8q7W+DzsDljbq+jyDBEDPVeKi3oj0M3a6lO01OJjTy42M+qjHprIDpjASDdl
         MNnovKPN04SwWh8XUuinjrSxFtwUq4r5H1JNDRZ9llYKVRUR2ZEHaUDXK8kE8DNKdYQ7
         /TOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YSt/wO7XSIyNtS1D8q6gqRP/ksadQMSkTlr22kMpteE=;
        b=m35NOMRl5okIUaXdye3YRCTmvvSh/Jxkr3Wa+XlktdaXLiCaBaFAnmka6O50MRfj54
         GU8IGUcqpfLpPWfkWBFVQrOO63KifWNjHxKjiMCyLYDC6ZCQ2hGuLpf96w7gmjSE5uep
         AqI4MHprLOy+QLiHSAmmz4psnwV+rHFuVQAydrX6repmPPtUD34uerxVUAGzil1VEupX
         AeQ/AkamBpea6kGtc44Ap2nvRqNAMLIciyKRu8gNiWm64YQdxQVD4POY2g8sFXRlvr+Y
         yIcDIyeK/3s9DVR1Hvt+eeNHX+38rOGZV9a+Sd2slkKiZf1xQkM14yC8jho8IF3R8nk9
         JnzA==
X-Gm-Message-State: AO0yUKVuFDQ/+k8/NxeqpB3Ysl3zTAcDlB4NUqi2NdrVM5mosiksXjbw
	aPVOGBRrFsRcO4Lq8fFxXHbp/PEeU5ONA9fy/vQ5Hw4vBo+TAOGn
X-Google-Smtp-Source: AK7set/6wnsjUlxEM67eUAD5nkOTF3rDyaRKaTHx9cHuAKzLygejHFZyifGTp0jN5rfK5zvKxrCbtCleH7vzIT0FdXI=
X-Received: by 2002:a63:b513:0:b0:4fc:a80e:e6ec with SMTP id
 y19-20020a63b513000000b004fca80ee6ecmr664111pge.5.1677583530601; Tue, 28 Feb
 2023 03:25:30 -0800 (PST)
MIME-Version: 1.0
References: <1675298118-64243-1-git-send-email-shawn.lin@rock-chips.com>
 <1675298118-64243-3-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFoN3GDRYRJep1ARf8rSftZRBUceda92OPuDQLvG3dVhhQ@mail.gmail.com>
 <a336a9ef-77e9-fa1d-ad95-805a8b5a89cb@rock-chips.com> <CAPDyKFrpv+DoqMK9cLrYMBk1m6dXoDXu40xSJ_UMVK8O+=Ud6A@mail.gmail.com>
 <c0f5f292-f639-1f7c-3d12-2c80015c67fc@rock-chips.com>
In-Reply-To: <c0f5f292-f639-1f7c-3d12-2c80015c67fc@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 28 Feb 2023 12:24:54 +0100
Message-ID: <CAPDyKFpM3+0OTRP5iSiSkpomgDYWHZD6dDXtif7B0FGjoeAt=g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] mmc: sdhci-of-dwcmshc: Add runtime PM support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-rockchip@lists.infradead.org, "Rafael J. Wysocki" <rafael@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_032532_732991_97D9B858 
X-CRM114-Status: GOOD (  31.56  )
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

KyBSYWZhZWwKCk9uIFdlZCwgMTUgRmViIDIwMjMgYXQgMDE6NTAsIFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPgo+IEhpIFVsZgo+Cj4gT24gMjAyMy8yLzE0IDE4
OjQxLCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+IE9uIFR1ZSwgMTQgRmViIDIwMjMgYXQgMDQ6MzYs
IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiA+Pgo+ID4+IEhp
IFVsZiwKPiA+Pgo+ID4+IE9uIDIwMjMvMi8xNCA3OjQ1LCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+
Pj4gT24gVGh1LCAyIEZlYiAyMDIzIGF0IDAxOjM1LCBTaGF3biBMaW4gPHNoYXduLmxpbkByb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gVGhpcyBwYXRjaCBhZGRzIHJ1bnRpbWUg
UE0gc3VwcG9ydC4KPiA+Pj4+Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXdu
LmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+Pj4+IC0tLQo+ID4+Pj4KPiA+Pj4+IENoYW5nZXMgaW4g
djI6IE5vbmUKPiA+Pj4+Cj4gPj4+PiAgICBkcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21z
aGMuYyB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiA+Pj4+ICAg
IDEgZmlsZSBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4+Pgo+
ID4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jIGIv
ZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKPiA+Pj4+IGluZGV4IDQ2YjFjZTcu
LmZjOTE3ZWQgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3
Y21zaGMuYwo+ID4+Pj4gKysrIGIvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMK
PiA+Pj4+IEBAIC0xNSw2ICsxNSw3IEBACj4gPj4+PiAgICAjaW5jbHVkZSA8bGludXgvbW9kdWxl
Lmg+Cj4gPj4+PiAgICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPiA+Pj4+ICAgICNpbmNsdWRlIDxs
aW51eC9vZl9kZXZpY2UuaD4KPiA+Pj4+ICsjaW5jbHVkZSA8bGludXgvcG1fcnVudGltZS5oPgo+
ID4+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4gPj4+PiAgICAjaW5jbHVkZSA8bGlu
dXgvc2l6ZXMuaD4KPiA+Pj4+Cj4gPj4+PiBAQCAtNTUxLDYgKzU1MiwxMyBAQCBzdGF0aWMgaW50
IGR3Y21zaGNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+Pj4+ICAgICAg
ICAgICBpZiAoZXJyKQo+ID4+Pj4gICAgICAgICAgICAgICAgICAgZ290byBlcnJfc2V0dXBfaG9z
dDsKPiA+Pj4+Cj4gPj4+PiArICAgICAgIHBtX3J1bnRpbWVfZ2V0X25vcmVzdW1lKCZwZGV2LT5k
ZXYpOwo+ID4+Pj4gKyAgICAgICBwbV9ydW50aW1lX3NldF9hY3RpdmUoJnBkZXYtPmRldik7Cj4g
Pj4+PiArICAgICAgIHBtX3J1bnRpbWVfZW5hYmxlKCZwZGV2LT5kZXYpOwo+ID4+Pj4gKyAgICAg
ICBwbV9ydW50aW1lX3NldF9hdXRvc3VzcGVuZF9kZWxheSgmcGRldi0+ZGV2LCA1MCk7Cj4gPj4+
PiArICAgICAgIHBtX3J1bnRpbWVfdXNlX2F1dG9zdXNwZW5kKCZwZGV2LT5kZXYpOwo+ID4+Pj4g
KyAgICAgICBwbV9ydW50aW1lX3B1dF9hdXRvc3VzcGVuZCgmcGRldi0+ZGV2KTsKPiA+Pj4+ICsK
PiA+Pj4+ICAgICAgICAgICByZXR1cm4gMDsKPiA+Pj4+Cj4gPj4+PiAgICBlcnJfc2V0dXBfaG9z
dDoKPiA+Pj4+IEBAIC01ODAsNiArNTg4LDExIEBAIHN0YXRpYyBpbnQgZHdjbXNoY19yZW1vdmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+Pj4+ICAgICAgICAgICBpZiAocmtfcHJp
dikKPiA+Pj4+ICAgICAgICAgICAgICAgICAgIGNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKFJL
MzV4eF9NQVhfQ0xLUywKPiA+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJrX3ByaXYtPnJvY2tjaGlwX2Nsa3MpOwo+ID4+Pj4gKwo+ID4+Pj4gKyAgICAg
ICBwbV9ydW50aW1lX2dldF9zeW5jKCZwZGV2LT5kZXYpOwo+ID4+Pj4gKyAgICAgICBwbV9ydW50
aW1lX2Rpc2FibGUoJnBkZXYtPmRldik7Cj4gPj4+PiArICAgICAgIHBtX3J1bnRpbWVfcHV0X25v
aWRsZSgmcGRldi0+ZGV2KTsKPiA+Pj4+ICsKPiA+Pj4+ICAgICAgICAgICBzZGhjaV9wbHRmbV9m
cmVlKHBkZXYpOwo+ID4+Pj4KPiA+Pj4+ICAgICAgICAgICByZXR1cm4gMDsKPiA+Pj4+IEBAIC02
MzgsNyArNjUxLDQzIEBAIHN0YXRpYyBpbnQgZHdjbXNoY19yZXN1bWUoc3RydWN0IGRldmljZSAq
ZGV2KQo+ID4+Pj4gICAgfQo+ID4+Pj4gICAgI2VuZGlmCj4gPj4+Pgo+ID4+Pj4gLXN0YXRpYyBT
SU1QTEVfREVWX1BNX09QUyhkd2Ntc2hjX3Btb3BzLCBkd2Ntc2hjX3N1c3BlbmQsIGR3Y21zaGNf
cmVzdW1lKTsKPiA+Pj4+ICsjaWZkZWYgQ09ORklHX1BNCj4gPj4+PiArc3RhdGljIGludCBkd2Nt
c2hjX3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4+PiArewo+ID4+Pj4g
KyAgICAgICBzdHJ1Y3Qgc2RoY2lfaG9zdCAqaG9zdCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+
ID4+Pj4gKyAgICAgICB1MTYgZGF0YTsKPiA+Pj4+ICsgICAgICAgaW50IHJldDsKPiA+Pj4+ICsK
PiA+Pj4+ICsgICAgICAgcmV0ID0gc2RoY2lfcnVudGltZV9zdXNwZW5kX2hvc3QoaG9zdCk7Cj4g
Pj4+PiArICAgICAgIGlmIChyZXQpCj4gPj4+PiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsK
PiA+Pj4+ICsKPiA+Pj4+ICsgICAgICAgZGF0YSA9IHNkaGNpX3JlYWR3KGhvc3QsIFNESENJX0NM
T0NLX0NPTlRST0wpOwo+ID4+Pj4gKyAgICAgICBkYXRhICY9IH5TREhDSV9DTE9DS19DQVJEX0VO
Owo+ID4+Pj4gKyAgICAgICBzZGhjaV93cml0ZXcoaG9zdCwgZGF0YSwgU0RIQ0lfQ0xPQ0tfQ09O
VFJPTCk7Cj4gPj4+PiArCj4gPj4+PiArICAgICAgIHJldHVybiAwOwo+ID4+Pj4gK30KPiA+Pj4+
ICsKPiA+Pj4+ICtzdGF0aWMgaW50IGR3Y21zaGNfcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmlj
ZSAqZGV2KQo+ID4+Pj4gK3sKPiA+Pj4+ICsgICAgICAgc3RydWN0IHNkaGNpX2hvc3QgKmhvc3Qg
PSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiA+Pj4+ICsgICAgICAgdTE2IGRhdGE7Cj4gPj4+PiAr
Cj4gPj4+PiArICAgICAgIGRhdGEgPSBzZGhjaV9yZWFkdyhob3N0LCBTREhDSV9DTE9DS19DT05U
Uk9MKTsKPiA+Pj4+ICsgICAgICAgZGF0YSB8PSBTREhDSV9DTE9DS19DQVJEX0VOOwo+ID4+Pj4g
KyAgICAgICBzZGhjaV93cml0ZXcoaG9zdCwgZGF0YSwgU0RIQ0lfQ0xPQ0tfQ09OVFJPTCk7Cj4g
Pj4+PiArCj4gPj4+PiArICAgICAgIHJldHVybiBzZGhjaV9ydW50aW1lX3Jlc3VtZV9ob3N0KGhv
c3QsIDApOwo+ID4+Pj4gK30KPiA+Pj4+ICsjZW5kaWYKPiA+Pj4+ICsKPiA+Pj4+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IGRldl9wbV9vcHMgZHdjbXNoY19wbW9wcyA9IHsKPiA+Pj4+ICsgICAgICAg
U0VUX1NZU1RFTV9TTEVFUF9QTV9PUFMoZHdjbXNoY19zdXNwZW5kLAo+ID4+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBkd2Ntc2hjX3Jlc3VtZSkKPiA+Pj4KPiA+Pj4gSSBoYXZl
IGxvb2tlZCBhdCBkd2Ntc2hjX3N1c3BlbmQoKSwgd2hpY2ggY2FsbHMgc2RoY2lfc3VzcGVuZF9o
b3N0KCkuCj4gPj4+IEFzIHNkaGNpX3N1c3BlbmRfaG9zdCgpIHdpbGwgd3JpdGUgdG8gaW50ZXJu
YWwgcmVnaXN0ZXJzIG9mIHRoZSBJUAo+ID4+PiBibG9jaywgaXQncyByZWNvbW1lbmRlZCB0byBt
YWtlIHN1cmUgdGhlIGRldmljZSdzIHJ1bnRpbWUgcmVzdW1lZAo+ID4+PiBiZWZvcmUgZG9pbmcg
dGhhdCBjYWxsLiBTbyB0aGF0IG5lZWRzIHRvIGJlIGFkZGVkIGFsb25nIHdpdGggJHN1YmplY3QK
PiA+Pj4gcGF0Y2guCj4gPj4+Cj4gPj4KPiA+PiBZZXAsIGxldCBtZSBhZGQgYSBjaGVjayBoZXJl
Lgo+ID4+Cj4gPj4+IFRoZXJlIGlzIGFsc28gYW5vdGhlciBvcHRpb24gdGhhdCBtYXkgYmV0dGVy
IGZvciB5b3UsIHdoaWNoIGlzIHRvIHVzZQo+ID4+PiB0aGUgcG1fcnVudGltZV9mb3JjZV9zdXNw
ZW5kfHJlc3VtZSgpIGhlbHBlcnMuIFRoZXJlIHNob3VsZCBiZSBwbGVudHkKPiA+Pj4gb2YgcmVm
ZXJlbmNlcyB0byBsb29rIGF0LCBidXQgZG9uJ3QgaGVzaXRhdGUgdG8gYXNrIGFyb3VuZCB0aGF0
LCBpZgo+ID4+PiB5b3UgbmVlZCBzb21lIG1vcmUgaGVscCB0byBnZXQgdGhhdCB3b3JraW5nLgo+
ID4+Cj4gPj4gSWYgSSB1bmRlcnN0YW5kIGNvcnJlY3RseSwgIHBtX3J1bnRpbWVfZm9yY2Vfc3Vz
cGVuZHxyZXN1bWUoKSBoZWxwZXJzCj4gPj4gd291bGQgdXNlIHJ1bnRpbWUgUE0gb3BzIGZvciBz
dXNwZW5kL3Jlc3VtZSByb3V0aW5lLiBJbiB0aGlzIGNhc2UsIHRoZQo+ID4+IG1haW4gaXNzdWUg
aXMgdGhlIGhhbmRsaW5nIG9mIGNsb2NrIGlzIHF1aXRlIGRpZmZlcmVudC4gSW4gc3VzcGVuZCB3
ZQo+ID4+IG5lZWQgdG8gZ2F0ZSBhbGwgY2xvY2tzIGJ1dCBpbiBycG0gY2FzZSwgaXQgc2hvdWxk
bid0Lgo+ID4KPiA+IEkgc2VlLCBidXQgbGV0IG1lIHRoZW4gYXNrLCB3aGF0J3MgdGhlIHBvaW50
IG9mIGtlZXBpbmcgdGhlIGNsb2Nrcwo+ID4gdW5nYXRlZCBhdCBydW50aW1lIHN1c3BlbmQ/Cj4g
Pgo+ID4gVGhhdCBzb3VuZHMgbGlrZSB3YXN0aW5nIGVuZXJneSB0byBtZSAtIGJ1dCBtYXliZSB0
aGVyZSBhcmUgZ29vZCByZWFzb25zIGZvciBpdD8KPgo+IFRoZSBwb2ludCB0byBrZWVwIHRoZSBj
bG9ja3MgdW5nYXRlZCBhdCBydW50aW1lIHN1c3BlbmQgaXMgdGhhdCBpZiB0aGV5Cj4gYXJlIGdh
dGVkLCAgdGhlIERMTCB3b3VsZCBsb3N0IGl0cyBsb2NrZWQgc3RhdGUgd2hpY2ggY2F1c2VzIHJl
dHVuaW5nCj4gZXZlcnkgdGltZS4gSXQncyBxdWl0ZSBwYWluZnVsIGZvciBwZXJmb3JtYW5jZS4g
SG93ZXZlciwgaWYgd2UganVzdCBnYXRlCj4gb3V0cHV0IGNsb2NrIHRvIHRoZSBkZXZpY2UsIHRo
ZSBkZXZpY2VzKGJhc2ljYWxseSBJIHJlZmVyIHRvIGVNTUMpIHdpbGwKPiBnZXQgaW50byBwb3dl
ci1zYXZlIHN0YXR1cyBieSBpdHNlbGYuIFRoYXQgaGVscHMgdXMgdG9vIGtlZXAgYmFsYW5jZQo+
IGJldHdlZW4gcG93ZXIgJiBwZXJmb3JtYW5jZSBkdXJpbmcgcnVudGltZS4g77ya77yJCgpJIHNl
ZSwgdGhhbmtzIGZvciBjbGFyaWZ5aW5nISBJbiBwcmluY2lwbGUgeW91ciBhcHByb2FjaCBzaG91
bGQgd29yawpmaW5lLCBidXQgaXQgZGVwZW5kcyBhIGJpdCBvbiB0aGUgcGxhdGZvcm0vc29jIHRv
by4KCkkgYXNzdW1lIHRoZXJlIGNvdWxkIGFsc28gYmUgYSBQTSBkb21haW4gYXR0YWNoZWQgdG8g
dGhlIG1tYyBob3N0CmRldmljZSwgcmlnaHQ/IElmIHN1Y2ggYSBQTSBkb21haW4gZ2V0cyBwb3dl
cmVkIG9mZiwgd291bGRuJ3QgeW91IG5lZWQKdG8gcnVuIGEgcmV0dW5pbmcgc2VxdWVuY2UgYW55
d2F5PwoKRllJLCBJIGhhdmUgaGVhcmQgYWJvdXQgc2ltaWxhciBwcm9ibGVtcyBmb3IgZGV2aWNl
cyBiZWZvcmUgLSBhbmQgaXQncwpiZWVuIGRpc2N1c3NlZCB0b28uIEluIHByaW5jaXBsZSwgaXQg
c291bmRzIHRvIG1lIHRoYXQgd2UgaGF2ZSBkZXZpY2VzCnRoYXQgd291bGQgYmVuZWZpdCBmcm9t
IHVzaW5nICptdWx0aXBsZSogaWRsZSBzdGF0ZXMsIHJhdGhlciB0aGFuIGp1c3QKdGhlIG9uZSB3
ZSBoYXZlIGZvciBydW50aW1lIHN1c3BlbmQgYW5kIHRoZSBvbmUgZm9yIHN5c3RlbSB3aWRlCnN1
c3BlbmQuCgpLaW5kIHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
