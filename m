Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE57FCD80A8
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 11:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xM4tWAzx8YAcY9Pqqx67YTLtCcU1iFiYz48R67IrQtA=; b=u6oX+EJsR5RTy7
	KMZNUx6+cZZMoy8YT7fhHvPFPCEoIgFUENohUKICLOfLbKxOaNAX15DKvnMeTMTnjtMf6Fj+d075K
	QroG6qNVsrwJavzQSbcBm0nsLC08Cyyq74Solfb6QLCXDxqRv83PsFs4xhVsmVjyqx2o7bu7iEV/O
	GhqMyKeioTiTLWR0R+ratNvH6E9COSp1LSpcnycurwqhtIIq/it9XhcH7WT1heU4Hs3hm3lMZlvqA
	UQ9TJt/wzsFBEh7Af+VjwfLCRFFPurbtHPru97GCNXgux93G/Y/TL6PSDjj9A73w/N194weBScss5
	4eG+Z83P7gg/y1HVFJ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqApb-00DEb3-2x;
	Tue, 10 Oct 2023 11:23:19 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqApX-00DEZS-1r
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Oct 2023 11:23:18 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5a2536adaf3so67308717b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Oct 2023 04:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696936990; x=1697541790; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=POL8IbM7Vi2ralIIYuoAFWFBsY0Txlw06bqhpyC2YkY=;
        b=hrOHetjzpaIffLz1WWV7R+3ZMt7GZQgCbB45ey1yRNn0ymw3msICe0y+PoNcqKP1DD
         VzSqxtxn4QPrmcguTxl56MXpdEA8ZyFq8teipFgLATdaQklq/lL3Qvo0NjWY/j0Yc6vj
         eXfKDOUaQcUYDwzo1AnFkVdBalC4E1Wu6BO3CMNghTwPkdw9ExXPc8WBl01e6jDUaGJu
         YXR6DWB7zkZ90uo8X6MlEd8WrP5YGJLSyL8N1WyZsHe7HFMZyNGKl13l1sj40xE0rVB+
         JcjUJ2ixzMxeDIK4OMxmTmEZPNLSXv7qn7YlhD+vjlF/yHvdaYjKqoyiCyGZLOdY6Yj0
         qgNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696936990; x=1697541790;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=POL8IbM7Vi2ralIIYuoAFWFBsY0Txlw06bqhpyC2YkY=;
        b=QXZvMtK7aJtTMVxFYhfFFXrxrc6jiDOaB10ONS4ABQWqiFGEjGZscYwTTBpZ1uwwRp
         FQpWA/VCue29/Ibssyy6H5osA8QMO8gkwWbmpQvoHgkLhFFfxF1UsSz4BoG58LHfverQ
         nVh7H63NHopcoOYJxpDBPhXRg2ZHikGZPi9lVhS3T6LwY8wCs90Cu80kjvVt4LycRLzW
         rcaxiqNk6hxoMtx/k5xn2zO8cNDC0Gc2iefwgSDBnyKEhFATTi07JtTRndvaJPS/YJYj
         Df44Zp0LK3Xv/jO7Yp8KYGo5vTyc8lKdQfblh2hgYssAPb8NZ1zr2QvPvJ08ZphqQIYB
         IYVw==
X-Gm-Message-State: AOJu0YynVul/3nLi8AbmIFH/0Jh9MjgjJhK/N1SdyxsgFvhNtwTHMcja
	Y0TatJ4UBooFHfMZ2pFuJ8fwQKnGFvR91uJpIWna4A==
X-Google-Smtp-Source: AGHT+IFbe/BR4rGJZ9CNDr1L7sum4DGjtasG+J3vWK5cy1rKo91hDdGB2Ve+4cAMZUoNWzW7lzEuUTAz+PjWx9MaA/U=
X-Received: by 2002:a25:d650:0:b0:bfe:e383:6297 with SMTP id
 n77-20020a25d650000000b00bfee3836297mr17630043ybg.19.1696936990135; Tue, 10
 Oct 2023 04:23:10 -0700 (PDT)
MIME-Version: 1.0
References: <20231006224614.444488-1-robh@kernel.org>
In-Reply-To: <20231006224614.444488-1-robh@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Oct 2023 13:22:33 +0200
Message-ID: <CAPDyKFpi9SBkmzWx10bjSNVUJoTQxTrbmzAy=i78tnmDqQ5sUw@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: Use device_get_match_data()
To: Rob Herring <robh@kernel.org>
Cc: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Manivannan Sadhasivam <mani@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_042315_663127_53FCC3AD 
X-CRM114-Status: GOOD (  18.09  )
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

T24gU2F0LCA3IE9jdCAyMDIzIGF0IDAwOjQ2LCBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
PiB3cm90ZToKPgo+IFVzZSBwcmVmZXJyZWQgZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkgaW5zdGVh
ZCBvZiBvZl9tYXRjaF9kZXZpY2UoKSB0bwo+IGdldCB0aGUgZHJpdmVyIG1hdGNoIGRhdGEuIFdp
dGggdGhpcywgYWRqdXN0IHRoZSBpbmNsdWRlcyB0byBleHBsaWNpdGx5Cj4gaW5jbHVkZSB0aGUg
Y29ycmVjdCBoZWFkZXJzLgo+Cj4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4KCkFwcGxpZWQgZm9yIG5leHQsIHRoYW5rcyEKCktpbmQgcmVnYXJkcwpVZmZlCgoK
PiAtLS0KPiAgZHJpdmVycy9wbWRvbWFpbi9hY3Rpb25zL293bC1zcHMuYyAgICAgfCAxNiArKysr
Ky0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvcG1kb21haW4vaW14L2dwYy5jICAgICAgICAgICAgIHwg
IDcgKysrLS0tLQo+ICBkcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyB8IDEz
ICsrKystLS0tLS0tLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAyNCBk
ZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BtZG9tYWluL2FjdGlvbnMvb3ds
LXNwcy5jIGIvZHJpdmVycy9wbWRvbWFpbi9hY3Rpb25zL293bC1zcHMuYwo+IGluZGV4IDczYTll
MGJiN2U4ZS4uM2E1ODZkMWYzMjU2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcG1kb21haW4vYWN0
aW9ucy9vd2wtc3BzLmMKPiArKysgYi9kcml2ZXJzL3BtZG9tYWluL2FjdGlvbnMvb3dsLXNwcy5j
Cj4gQEAgLTgsOCArOCwxMCBAQAo+ICAgKiBDb3B5cmlnaHQgKGMpIDIwMTcgQW5kcmVhcyBGw6Ry
YmVyCj4gICAqLwo+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2RfZGV2aWNldGFibGUuaD4KPiAgI2lu
Y2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L29mX3BsYXRmb3Jt
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L3Byb3BlcnR5Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9wbV9kb21haW4uaD4KPiAgI2luY2x1
ZGUgPGxpbnV4L3NvYy9hY3Rpb25zL293bC1zcHMuaD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L3Bvd2VyL293bC1zNTAwLXBvd2VyZ2F0ZS5oPgo+IEBAIC05NiwyNCArOTgsMTYgQEAgc3RhdGlj
IGludCBvd2xfc3BzX2luaXRfZG9tYWluKHN0cnVjdCBvd2xfc3BzICpzcHMsIGludCBpbmRleCkK
Pgo+ICBzdGF0aWMgaW50IG93bF9zcHNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiAgewo+IC0gICAgICAgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7Cj4gICAg
ICAgICBjb25zdCBzdHJ1Y3Qgb3dsX3Nwc19pbmZvICpzcHNfaW5mbzsKPiAgICAgICAgIHN0cnVj
dCBvd2xfc3BzICpzcHM7Cj4gICAgICAgICBpbnQgaSwgcmV0Owo+Cj4gLSAgICAgICBpZiAoIXBk
ZXYtPmRldi5vZl9ub2RlKSB7Cj4gLSAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwg
Im5vIGRldmljZSBub2RlXG4iKTsKPiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4g
LSAgICAgICB9Cj4gLQo+IC0gICAgICAgbWF0Y2ggPSBvZl9tYXRjaF9kZXZpY2UocGRldi0+ZGV2
LmRyaXZlci0+b2ZfbWF0Y2hfdGFibGUsICZwZGV2LT5kZXYpOwo+IC0gICAgICAgaWYgKCFtYXRj
aCB8fCAhbWF0Y2gtPmRhdGEpIHsKPiArICAgICAgIHNwc19pbmZvID0gZGV2aWNlX2dldF9tYXRj
aF9kYXRhKCZwZGV2LT5kZXYpOwo+ICsgICAgICAgaWYgKCFzcHNfaW5mbykgewo+ICAgICAgICAg
ICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJ1bmtub3duIGNvbXBhdGlibGUgb3IgbWlzc2lu
ZyBkYXRhXG4iKTsKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gICAgICAgICB9
Cj4KPiAtICAgICAgIHNwc19pbmZvID0gbWF0Y2gtPmRhdGE7Cj4gLQo+ICAgICAgICAgc3BzID0g
ZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0X3NpemUoc3BzLCBkb21haW5zLCBzcHNfaW5mby0+bnVtX2RvbWFpbnMpLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEdGUF9LRVJORUwpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bt
ZG9tYWluL2lteC9ncGMuYyBiL2RyaXZlcnMvcG1kb21haW4vaW14L2dwYy5jCj4gaW5kZXggOTBh
OGIyYzA2NzZmLi4xMTRmNDRjYTA3ZGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wbWRvbWFpbi9p
bXgvZ3BjLmMKPiArKysgYi9kcml2ZXJzL3BtZG9tYWluL2lteC9ncGMuYwo+IEBAIC03LDkgKzcs
MTAgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ICAjaW5jbHVkZSA8bGludXgvZGVsYXku
aD4KPiAgI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2Uu
aD4KPiArI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9k
ZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BtX2RvbWFpbi5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvcHJvcGVydHkuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ICAjaW5jbHVkZSA8
bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+Cj4KPiBAQCAtNDAzLDkgKzQwNCw3IEBAIHN0YXRp
YyBpbnQgaW14X2dwY19vbGRfZHRfaW5pdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCByZWdt
YXAgKnJlZ21hcCwKPgo+ICBzdGF0aWMgaW50IGlteF9ncGNfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgewo+IC0gICAgICAgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAq
b2ZfaWQgPQo+IC0gICAgICAgICAgICAgICAgICAgICAgIG9mX21hdGNoX2RldmljZShpbXhfZ3Bj
X2R0X2lkcywgJnBkZXYtPmRldik7Cj4gLSAgICAgICBjb25zdCBzdHJ1Y3QgaW14X2dwY19kdF9k
YXRhICpvZl9pZF9kYXRhID0gb2ZfaWQtPmRhdGE7Cj4gKyAgICAgICBjb25zdCBzdHJ1Y3QgaW14
X2dwY19kdF9kYXRhICpvZl9pZF9kYXRhID0gZGV2aWNlX2dldF9tYXRjaF9kYXRhKCZwZGV2LT5k
ZXYpOwo+ICAgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpwZ2Nfbm9kZTsKPiAgICAgICAgIHN0
cnVjdCByZWdtYXAgKnJlZ21hcDsKPiAgICAgICAgIHZvaWQgX19pb21lbSAqYmFzZTsKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJz
L3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IGluZGV4IGQ1ZDNlY2IzODI4My4uOWI3
NmI2Mjg2OWQwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9t
YWlucy5jCj4gKysrIGIvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiBA
QCAtOSwxMSArOSwxMyBAQAo+ICAjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9lcnIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gKyNpbmNsdWRlIDxs
aW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BtX2Nsb2NrLmg+Cj4g
ICNpbmNsdWRlIDxsaW51eC9wbV9kb21haW4uaD4KPiArI2luY2x1ZGUgPGxpbnV4L3Byb3BlcnR5
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICAjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVz
cy5oPgo+ICAjaW5jbHVkZSA8bGludXgvb2ZfY2xrLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9vZl9w
bGF0Zm9ybS5oPgo+ICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9y
ZWdtYXAuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4KPiBAQCAtODU3LDcgKzg1
OSw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcG1fZG9tYWluX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGU7Cj4gICAg
ICAgICBzdHJ1Y3QgZGV2aWNlICpwYXJlbnQ7Cj4gICAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfcG11
ICpwbXU7Cj4gLSAgICAgICBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsKPiAgICAg
ICAgIGNvbnN0IHN0cnVjdCByb2NrY2hpcF9wbXVfaW5mbyAqcG11X2luZm87Cj4gICAgICAgICBp
bnQgZXJyb3I7Cj4KPiBAQCAtODY2LDEzICs4NjcsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3Bt
X2RvbWFpbl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgICAg
ICAgICByZXR1cm4gLUVOT0RFVjsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgbWF0Y2ggPSBvZl9t
YXRjaF9kZXZpY2UoZGV2LT5kcml2ZXItPm9mX21hdGNoX3RhYmxlLCBkZXYpOwo+IC0gICAgICAg
aWYgKCFtYXRjaCB8fCAhbWF0Y2gtPmRhdGEpIHsKPiAtICAgICAgICAgICAgICAgZGV2X2Vycihk
ZXYsICJtaXNzaW5nIHBtdSBkYXRhXG4iKTsKPiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5W
QUw7Cj4gLSAgICAgICB9Cj4gLQo+IC0gICAgICAgcG11X2luZm8gPSBtYXRjaC0+ZGF0YTsKPiAr
ICAgICAgIHBtdV9pbmZvID0gZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7Cj4KPiAgICAgICAg
IHBtdSA9IGRldm1fa3phbGxvYyhkZXYsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0X3NpemUocG11LCBkb21haW5zLCBwbXVfaW5mby0+bnVtX2RvbWFpbnMpLAo+IC0tCj4gMi40
MC4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
