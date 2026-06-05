Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62FF7CD6E7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 15:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7qqdbBwe7vY7i342nktesxlAmz7cAroHfnlo4SS3WY=; b=iCal0HCSR1b/DM
	PHDqFnlIwzk9x3WD12MCI6809qY+XgbEvJ1e76u/42HJgRNZ22mzrSL6ksYImEAscQ9zltGWDjjDy
	6Mvu3skTaqklaO98trLBQ6svqrkbZbSlMwITUT0vXLuAVXkokHOXWCN7psYXQ6rFCjL2bjtoMuq7N
	CNL3XgVyd3t/s4t8E0eLkmrHrv/aDg5Rp1YmJDt4yOmQxV6wqCiyGLowmszp2BwlQSL2OdFIW418g
	8mdtkFghi5zH5yb4F+yDDHiP5Pwlj4nr2aB01aHfXCvss30MzN2sGg4TSCmTbcJ6j9zO+PE41Xb+B
	Q3cIdHW5CtK7fQShjsuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVWx1-00000000rxM-43sQ;
	Fri, 05 Jun 2026 15:59:15 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVWwy-00000000rwd-22zG
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 15:59:13 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-5174a3a025aso20409641cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jun 2026 08:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780675151; cv=none;
        d=google.com; s=arc-20240605;
        b=ZhDVQ/4eimGzxAFfa96y3sEL/zZe/IU2sjhyk6OqRW+gmeBz05LqnPOH0agaxwovJH
         HaGlmxtJKphFga5VJxXpCiyZB8DlACTPnoEnQyd4fPMJcsb8PkmXfFTL8LesR0e9ZT8O
         fFvLnx0+nmP2prgjlkzmPGNDFPKT0KakWCl/2gVWdfeei9FXD6lhdQcmYjqhY3a5EGQG
         voTxAPeSh5s8meRqUd12IeMMTHHRZocJ05Nf9Ozyz1ZZ7LoYGNlb+/D1l2vrWtFjJeeq
         hsqqZXdNQj76R1xg8LfK6XLn8PrvTQfm8oraluuJHg8tiEf7tpUTvg6l9t32T2nGsRFE
         RJag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9ksbjEziQ/klkTRNLQdAgetuDlG0vybDd4/Easyb/oE=;
        fh=V1sAEBFE91T2ESou3DVZ9qcMuT4pXwOuaUwbQgcf8FQ=;
        b=a3IfrjyWFvOn9j1RjYabj9sLO+rN5wOxtWacmSmaLeBC0PeGsnfOlN2PJdETRWIQDF
         +owie0sWT1jzqd48r3h7cSxgTBZFCc74tpxqCN2rflAJihM3spSSStVqHWVJKyokrCdX
         tRnl9ueLf1m9SD3dAxmvPQsLLS9x3pBiKHljBGq/lS6yUyw1VQ4ik6DT4FU/1d6c7dIg
         ImU1leMjJTXb++xYaPv17l6KKSbNuRIY5Mas9WlcfxKXGfjwNuMr9620yl7f+7rCav58
         rl8biQCfo8C3uG1Dngl20TN2lFPc9oNo5345Gqn+nXmid35cbsTsTUh2QhzT5sJDJw0x
         a6HA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780675151; x=1781279951; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ksbjEziQ/klkTRNLQdAgetuDlG0vybDd4/Easyb/oE=;
        b=ra7ZjgBrGgaLAo0PvpfUwP5UqKlGGYjL5Z3Ap5TsPG8KrfCiv4V+qgU8hytTFVTSs9
         zRlerfhAhnYNpZCqMG1YIr+hJ3Bgq97VzDedd7FWAVnyPOUdzzAAKDhG3oZJVDUHQWt+
         gFF2N3gh/4kJial5rjbi6yDdOa/xtiYrgaJA2fpIzwAHMc0juX7s9tDpK9RBr7hmOFoD
         bOXyMg1J5Fp1OLAO60sOp3TVJmsqwgnQKGZffcZrUXq+eDH41WPCclRGA1ku8djliNKG
         tE5xu5Gl43G6+aIQFgp0BEIRj6mrSWg22C8RwSZENI6xs/qcER7UXK4M/zAOYg/CLfhi
         6Jjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780675151; x=1781279951;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9ksbjEziQ/klkTRNLQdAgetuDlG0vybDd4/Easyb/oE=;
        b=keyO6qkqDTOge554qnW0pTg71MjkjrDT7dJQnk1U368OPsAqYiTJgfgPJpZRU3CWRM
         zBakgKBcB037BPm35HuPGV49F88OfiJ5bMTwYgwrd3eFWOhbXsZ14pP6D47tKF8/aSq6
         46e5x2SGKXINFWkMZ553avOnpDbdsP1vCGff0K5Nx4IUgM6h7xn3epinOfEZt4XjL6c9
         XmPb+M+qiYrvnayxRJxOyCV7mcTX7T/R+rY/xukduTpUTJhcMsF9I2ECBGj5Xwmy+JIp
         E6X3nmm1K0xZ327/3SZYg5HCnDE88TXpX8mSt8TPdrJN5N1nw/IS93jbLOiOlLfAcS8n
         XVUQ==
X-Forwarded-Encrypted: i=1; AFNElJ/CBQ8n7iGDNiiH/jc8g9tmLSIZ/QqdjaDh3ZhZXfyyxBWQXDOKtAfLcKiRAqf2GHU5d6vutv61C0+QLGDV3Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6hIa+CSguybcCd7QugPx+IMB41DYbqtCdFvTFNvwKf6YVqeEA
	ObsPhE11DZtAgMJ2mIGR0d+fqeETqCy1lnwTgbeJE+N3U3TZUfkus9cHXv2nqjM+1Gbg9auf1wo
	RXUCutAvBpj8EBtpCDC0TmNC3820uqc8=
X-Gm-Gg: Acq92OGEnWzMi9opFliGAcR7V1HoeeeRMIDHdSidSlzeMc4VTI02Xd32HkN6XeFuwl5
	/F3zEScTiNNlqlVjCWQV6B+D2kXRTqAj2QxHjj83QJjDNrEKDqCEvdNAFIwiDBH96SWxRMqbD7X
	TilY56uE4MSJVnupuaNIwyRmM+B+vbvuhOl4eM7i5MOMuvQhiwJlkYxTUOG000LT0HxQfgQ//Dg
	6P0rYnuuG8Xue22HBeptkUx8CidqfKFmnG4VSubAEDdLd8xVWcN197kEuRArAdGO+BTN75JTcUk
	rO8Sq+W5lnzM9thx
X-Received: by 2002:ac8:7d16:0:b0:517:89d0:b8a9 with SMTP id
 d75a77b69052e-51795a872cbmr62478381cf.9.1780675150571; Fri, 05 Jun 2026
 08:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <20260409-vop2-clk-rate-check-v2-1-b207cfc427d7@collabora.com>
In-Reply-To: <20260409-vop2-clk-rate-check-v2-1-b207cfc427d7@collabora.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 5 Jun 2026 19:58:59 +0400
X-Gm-Features: AVHnY4Kg55Cpi5Qk79GgU4qugmSkMCPyryYYbHOI9JHnUkY85yTZ0sefHW3lqDA
Message-ID: <CABjd4Yw_HYpjhrgmonB9FmWV00q=r3yvqnFE4TXEHpM1ZgWOhA@mail.gmail.com>
Subject: Re: [PATCH RFC v2] drm/rockchip: vop2: Add clock rate mode check
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_085912_571468_788E7A4F 
X-CRM114-Status: GOOD (  25.71  )
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

T24gRnJpLCBBcHIgMTAsIDIwMjYgYXQgMjozN+KAr0FNIFNlYmFzdGlhbiBSZWljaGVsCjxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IFRoZSBkaXNwbGF5IG1pZ2h0
IG9mZmVyIG1vZGVzLCB3aGljaCBleGNlZWQgdGhlIG1heGltdW0gY2xvY2sgcmF0ZSBvZiBhCj4g
dmlkZW8gb3V0cHV0LiBUaGlzIHVzdWFsbHkgaGFwcGVucyBmb3IgZGlzcGxheXMgdGhhdCBvZmZl
ciByZWZyZXNoIHJhdGVzCj4gYWJvdmUgNjAgSHouIFRoaXMgcmVzdWx0cyBpbiBubyBwaWN0dXJl
IChvciBhIGJyb2tlbiBvbmUpIGJlaW5nIGRpc3BsYXllZAo+IHdpdGhvdXQgbWFudWFsIGludGVy
dmVudGlvbi4gRml4IHRoaXMgYnkgdGVhY2hpbmcgdGhlIGRyaXZlciBhYm91dCB0aGUKPiBtYXhp
bXVtIGFjaGlldmFibGUgY2xvY2sgcmF0ZXMgZm9yIGVhY2ggdmlkZW8gcG9ydC4KPgo+IFRoZSBp
bmZvcm1hdGlvbiBhYm91dCB0aGUgbWF4aW11bSBjbG9jayByYXRlcyBmb3IgZWFjaCB2aWRlbyBj
aGFubmVsIGFuZAo+IHRoZSB0aXAgYWJvdXQgbXVsdGlwbGUgcGl4ZWxzIGJlaW5nIHByb2Nlc3Nl
ZCBwZXIgY2xvY2sgd2VyZSBwcm92aWRlZCBieQo+IEFuZHkgWWFuIGFuZCByb3VnaGx5IGNoZWNr
ZWQgYWdhaW5zdCB0aGUgaW5mb3JtYXRpb24gYXZhaWxhYmxlIGluIHRoZQo+IGRhdGFzaGVldCAo
d2hpY2ggc3BlY2lmaWVzIGxpbWl0cyBsaWtlICIyNTYweDE2MDBANjBIeiB3aXRoIDEwLWJpdCIK
PiBpbnN0ZWFkIG9mIGEgc3BlY2lmaWMgcGl4ZWwgcmF0ZSkuCj4KPiBGb3IgdGhlIHZpZGVvIHBv
cnRzIHN1cHBvcnRpbmcgYSA2MDAgTUh6IGlucHV0IGNsb2NrLCB0aGVyZSBpcyBzb21lCj4gbG9n
aWMgdG8gaGFuZGxlIHVwIHRvIDQgcGl4ZWxzIGluIHBhcmFsbGVsIHdoZW4gbmVlZGVkIHJlc3Vs
dGluZyBpbgo+IHRoZSBleHRyYSBtdWx0aXBsaWVyLgo+Cj4gU3VnZ2VzdGVkLWJ5OiBBbmR5IFlh
biA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcm9ja2NoaXAvMTUyOGQ3ODguMTg2Yi4xOWQwOGVkOTc0Yy5Db3JlbWFpbC5hbmR5
c2hya0AxNjMuY29tLwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+IEkndmUga2VwdCB0aGUgUkZDIHRhZywg
YXMgSSdtIG5vdCBzdXJlIGFib3V0IHRoZSA0eCBwYXJhbGxlbCBwaXhlbAo+IHByb2Nlc3Npbmcu
IElJVUlDIGFsbCBvZiB0aGUgdmlkZW8gcG9ydHMgd2l0aCBhIG1heGltdW0gb2YgNjAwIE1Iego+
IGlucHV0IGNsb2NrIHN1cHBvcnQgaXQsIGNvbnNpZGVyaW5nIHRoZXkgY2FuIGdvIHRvIDRLIEAg
MTIwSHosCj4gd2hpY2ggaXMgYWJvdmUgMS4yR0h6IHdoaWxlIEFuZHkgbWVudGlvbmVkIGEgbWF4
LiBzdXBwb3J0IGNsb2NrIHJhdGUKPiBvZiA2MDAgTUh6Lgo+IC0tLQo+IENoYW5nZXMgaW4gdjI6
Cj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMjE3LXZvcDIt
Y2xrLXJhdGUtY2hlY2stdjEtMS05ODliNTY5MTE5YmFAY29sbGFib3JhLmNvbQo+IC0gYmFzZWQg
b24gdjcuMC1yYzcKPiAtIHJlbmFtZSBtYXhfY2xvY2tfcmF0ZSBpbnRvIG1heF9waXhlbF9jbG9j
a19yYXRlIHRvIGRpc3Rpbmd1aXNoIGZyb20KPiAgIGlucHV0IGNsb2NrCj4gLSB1cGRhdGUgbWF4
IGNsb2NrIHJhdGVzIHRvIHRoZSBudW1iZXJzIHByb3ZpZGVkIGJ5IEFuZHkgWWFuIHdpdGgKPiAg
IGV4dHJhIDR4IG11bHRpcGxpZXIgZm9yIDRLIDEyMEh6IFZQcwo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8ICAzICsrKwo+ICBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuaCB8ICAxICsKPiAgZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJfcmVnLmMgfCAxMCArKysrKysrKysrCj4gIDMgZmls
ZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiBpbmRleCBhMTk1ZjVjODE5YTIuLjM1YTBlZGRhNTM3
NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cDIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
Cj4gQEAgLTE0MzQsNiArMTQzNCw5IEBAIHN0YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cyB2b3Ay
X2NydGNfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4gICAgICAgICBpZiAobW9k
ZS0+aGRpc3BsYXkgPiB2cC0+ZGF0YS0+bWF4X291dHB1dC53aWR0aCkKPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIE1PREVfQkFEX0hWQUxVRTsKPgo+ICsgICAgICAgaWYgKG1vZGUtPmNsb2NrID4g
dnAtPmRhdGEtPm1heF9waXhlbF9jbG9ja19yYXRlIC8gMTAwMCkKPiArICAgICAgICAgICAgICAg
cmV0dXJuIE1PREVfQ0xPQ0tfSElHSDsKPiArCj4gICAgICAgICByZXR1cm4gTU9ERV9PSzsKPiAg
fQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wMi5oIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmgKPiBp
bmRleCA5MTI0MTkxODk5YmEuLmZkNDY5MTNmMzM0NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5oCj4gQEAgLTIyNSw2ICsyMjUsNyBAQCBzdHJ1
Y3Qgdm9wMl92aWRlb19wb3J0X2RhdGEgewo+ICAgICAgICAgdTE2IGdhbW1hX2x1dF9sZW47Cj4g
ICAgICAgICB1MTYgY3ViaWNfbHV0X2xlbjsKPiAgICAgICAgIHN0cnVjdCB2b3BfcmVjdCBtYXhf
b3V0cHV0Owo+ICsgICAgICAgdTMyIG1heF9waXhlbF9jbG9ja19yYXRlOwo+ICAgICAgICAgY29u
c3QgdTggcHJlX3NjYW5fbWF4X2RseVs0XTsKPiAgICAgICAgIHVuc2lnbmVkIGludCBvZmZzZXQ7
Cj4gICAgICAgICAvKioKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX3ZvcDJfcmVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9w
Ml9yZWcuYwo+IGluZGV4IGYzOTUwZTg0NzZhNy4uNmFlM2Q1MDZjNDc2IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJfcmVnLmMKPiBAQCAtNTU5LDE4ICs1
NTksMjEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnRfZGF0YSByazM1Njhf
dm9wX3ZpZGVvX3BvcnRzW10gPSB7Cj4gICAgICAgICAgICAgICAgIC5nYW1tYV9sdXRfbGVuID0g
MTAyNCwKPiAgICAgICAgICAgICAgICAgLmN1YmljX2x1dF9sZW4gPSA5ICogOSAqIDksCj4gICAg
ICAgICAgICAgICAgIC5tYXhfb3V0cHV0ID0geyA0MDk2LCAyMzA0IH0sCj4gKyAgICAgICAgICAg
ICAgIC5tYXhfcGl4ZWxfY2xvY2tfcmF0ZSA9IDYwMDAwMDAwMFUsCj4gICAgICAgICAgICAgICAg
IC5wcmVfc2Nhbl9tYXhfZGx5ID0geyA2OSwgNTMsIDUzLCA0MiB9LAo+ICAgICAgICAgICAgICAg
ICAub2Zmc2V0ID0gMHhjMDAsCj4gICAgICAgICB9LCB7Cj4gICAgICAgICAgICAgICAgIC5pZCA9
IDEsCj4gICAgICAgICAgICAgICAgIC5nYW1tYV9sdXRfbGVuID0gMTAyNCwKPiAgICAgICAgICAg
ICAgICAgLm1heF9vdXRwdXQgPSB7IDIwNDgsIDE1MzYgfSwKPiArICAgICAgICAgICAgICAgLm1h
eF9waXhlbF9jbG9ja19yYXRlID0gMjAwMDAwMDAwVSwKPiAgICAgICAgICAgICAgICAgLnByZV9z
Y2FuX21heF9kbHkgPSB7IDQwLCA0MCwgNDAsIDQwIH0sCj4gICAgICAgICAgICAgICAgIC5vZmZz
ZXQgPSAweGQwMCwKPiAgICAgICAgIH0sIHsKPiAgICAgICAgICAgICAgICAgLmlkID0gMiwKPiAg
ICAgICAgICAgICAgICAgLmdhbW1hX2x1dF9sZW4gPSAxMDI0LAo+ICAgICAgICAgICAgICAgICAu
bWF4X291dHB1dCA9IHsgMTkyMCwgMTA4MCB9LAo+ICsgICAgICAgICAgICAgICAubWF4X3BpeGVs
X2Nsb2NrX3JhdGUgPSAxNTAwMDAwMDBVLAo+ICAgICAgICAgICAgICAgICAucHJlX3NjYW5fbWF4
X2RseSA9IHsgNDAsIDQwLCA0MCwgNDAgfSwKPiAgICAgICAgICAgICAgICAgLm9mZnNldCA9IDB4
ZTAwLAo+ICAgICAgICAgfSwKPiBAQCAtNzc1LDYgKzc3OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3Qgdm9wMl92aWRlb19wb3J0X2RhdGEgcmszNTc2X3ZvcF92aWRlb19wb3J0c1tdID0gewo+ICAg
ICAgICAgICAgICAgICAuZ2FtbWFfbHV0X2xlbiA9IDEwMjQsCj4gICAgICAgICAgICAgICAgIC5j
dWJpY19sdXRfbGVuID0gOSAqIDkgKiA5LCAvKiA5eDl4OSAqLwo+ICAgICAgICAgICAgICAgICAu
bWF4X291dHB1dCA9IHsgNDA5NiwgMjMwNCB9LAo+ICsgICAgICAgICAgICAgICAubWF4X3BpeGVs
X2Nsb2NrX3JhdGUgPSA2MDAwMDAwMDBVICogNCwKCkhpIFNlYmFzdGlhbiwKCkkndmUgdGVzdGVk
IGl0IG9uIGEgYnVuY2ggb2YgZGlmZmVyZW50IGRpc3BsYXlzIHdpdGggUkszNTc2IHdoaWxlIGFs
c28KZ2l2aW5nIFZQMCBhbiB1bmxpbWl0ZWQgUExMIHRvIHdvcmsgd2l0aCAoYW5kIGFsc28gZXhw
YW5kaW5nIGl0cyByYXRlcwp0YWJsZSBmb3IgZWFjaCBvZiB0aGUgZGlzcGxheXMnIEVESUQgcHJl
ZmVycmVkIHBpeGVsIGNsb2NrcyksIGFuZCBJJ20KcHJldHR5IHN1cmUgdGhpcyBzaG91bGQgYmUg
KiAyIGhlcmUsIHJhdGhlciB0aGFuICogNC4gVGhhdCB3b3VsZCBhbHNvCmFsaWduIHdpdGggIi5w
aXhlbF9yYXRlID0gMiIganVzdCBiZWxvdy4KCkluIGl0cyBjdXJyZW50IGZvcm0sIHNvbWUgb2Yg
dGhlIGFkdmFuY2VkIGRpc3BsYXlzIHdpdGggMjQwIEh6IG1vZGVzCmJ5IGRlZmF1bHQgY2hvb3Nl
IG1vZGVzIGxlYWRpbmcgdG8gdmlzdWFsIGFydGlmYWN0cyBpbmRpY2F0aXZlIG9mCm92ZXJjbG9j
a2luZyBzdHJhaW4gb2YgdGhlIGdyYXBoaWNzIHBpcGVsaW5lLgoKVGhlIHJlc3QgbG9vayBwbGF1
c2libGUsIHNvIHdpdGggdGhhdCBjaGFuZ2UgcGxlYXNlIGZlZWwgZnJlZSB0byBpbmNsdWRlOgoK
VGVzdGVkLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4gIyBSSzM1NzYK
CkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
