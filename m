Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A839FC77B7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 18:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXJUf6osu4PmAISm3cTA4ngLn/765x03Vjo5Zr9E8kA=; b=qyDbkuEhugWWuW
	b5R5YsQn2zm4jHZaRaQU0i3z9BUWEN9Q5zhDMXEBNPlZS428ZGCBotabVETDuPwP+mFvD/fL7Ec/T
	4Sb35SQzT0EGnN+Ath/4lbL7jmFwAcXkQ8+R4zpXb40aLQw2gGDkMP5gxnjwnzjsKefpPAefIEjiN
	1XUiFfHlLFpTpTYCxykP0Fd8wcNCd1L8fddb+jgAdUUNxw2UUKxuxMRXwS8UKG9Grf6r9nkWQAq8R
	CK4HQO8NBlfRDi2Pe8F6sKd39dXYEq3yCv4wGq0x0/F+tYdLFmNKER7DVwAGO93xDDzqQl6gyehgv
	z94k/3+sIrWW0g6vC5sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptYc8-00GaMs-1Z;
	Mon, 01 May 2023 18:51:08 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptYc1-00GaLx-24
	for linux-rockchip@lists.infradead.org;
	Mon, 01 May 2023 18:51:06 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-5f45fad3be1so26834796d6.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 May 2023 11:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20221208.gappssmtp.com; s=20221208; t=1682967059; x=1685559059;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1IrKN9yQpj4+PbmG8SIT7+msTT91q+chwYH/2Xg1TcE=;
        b=hedcBqmnBA1oJcgDT5njSgePClDMmN8QAyNivh2nLGm+v/i2sPlqVp3U5VKsYqnUYR
         m0G6n3KU6/FgXyabIdTEG8V5NZtTPZmovX+fA0zRg3ADpKxs1RXJ+0uQ1pI52B+/6K3F
         d3CQ68ONqQs6A2L6Cy6Q0croWPiwQCxlko3PjRnH3Yvf8BHYtgkxF8NLaoxiCFltAW3K
         xAz7toDwYAxnITtlvSD/yVCoPQ16dEgjmL9CV4ysdDL8t4t6oDTU+ElYNt6LxWaYm7f1
         AK3nF7DoNNQPUT5elKQsRLnWOR+UYiR2IBN3GoM0m5x0z9tfhGWUDIx0qZ2hBiXeHa4f
         aH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682967059; x=1685559059;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1IrKN9yQpj4+PbmG8SIT7+msTT91q+chwYH/2Xg1TcE=;
        b=Y254F2obIuaTSl4KfmHTlMojsaUXmv1LyWFFCXXWAJp2mlgAlyN7NlkjR6VRR+nBEi
         cYTljxM8yh6V6ailE/bYeJIvOdlQgcb/uA6ZwxKvfXFZQX8j/CUfnxL8kStDkrgZomAM
         02UYiUGm3yBBvNktu+XWKB5NcG5ObcLLCvTOzuzdBBYbdaGiRQ6Z4wQrwFUtVzOjVTtJ
         h4tYz1IIFI97pGlvuf8vDYVVq9ws8uCyGpMBKrMKAv1HrbAMdl3UKLn7ddJXOuDHQjpL
         iJL1mqDqvNcHnf0PZjGvSF6+BJqRPrlOuM4DCRbZw6QkvsqBC3DUo/P0F5yg4ZbacZy/
         e4rA==
X-Gm-Message-State: AC+VfDywB8HhznknGlOckc0fR0t0JeM/c1xaab7VImR1SZ57LCtu8FV/
	UAErFVP7tunZhEjdQjR1Bte9Nw==
X-Google-Smtp-Source: ACHHUZ7+pfQxUxJ0ZORCmS00RcCCJYQW0hmZdX2fRHxGy1/XhbEh8T5qxYUBY1qFCNOil3VOV1HKWA==
X-Received: by 2002:a05:6214:23c9:b0:619:ca55:9709 with SMTP id hr9-20020a05621423c900b00619ca559709mr1578917qvb.21.1682967058905;
        Mon, 01 May 2023 11:50:58 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:199e::7a9])
        by smtp.gmail.com with ESMTPSA id y4-20020a0ce044000000b0061b58b07130sm966247qvk.137.2023.05.01.11.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 11:50:58 -0700 (PDT)
Message-ID: <f4da6f1e5218db0417429a7fb5ebfdb95928e240.camel@ndufresne.ca>
Subject: Re: [PATCH] media: verisilicon: Final fix for the crash when
 opening the driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans
 Verkuil <hverkuil-cisco@xs4all.nl>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>
Date: Mon, 01 May 2023 14:50:57 -0400
In-Reply-To: <20230421104759.2236463-1-m.szyprowski@samsung.com>
References: 	<CGME20230421104811eucas1p16ad5e11ebc4d305c6fab372d3743b6e1@eucas1p1.samsung.com>
	 <20230421104759.2236463-1-m.szyprowski@samsung.com>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_115101_681328_DC63D588 
X-CRM114-Status: GOOD (  22.72  )
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

TGUgdmVuZHJlZGkgMjEgYXZyaWwgMjAyMyDDoCAxMjo0NyArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSBhIMOpY3JpdMKgOgo+IGN0eC0+dnB1X3NyY19mbXQgaXMgbm8gbW9yZSBpbml0aWFsaXplZCBi
ZWZvcmUgY2FsbGluZyBoYW50cm9fdHJ5X2ZtdCgpCj4gc28gY2hlY2tpbmcgaXQgbGVkIHRvIGNy
YXNoIHRoZSBrZXJuZWwuIFNpbXBseSB1c2UgdGhlIHByb3ZpZGVkICdmbXQnIGFzCj4gYSBmb3Jt
YXQgZm9yIHRob3NlIGNoZWNrcy4KPiAKPiBUaGlzIGZpeGVzIHRoZSBmb2xsb3dpbmcgaXNzdWUg
b2JzZXJ2ZWQgb24gT2Ryb2lkLU0xIGJvYXJkOgo+IAo+ICBVbmFibGUgdG8gaGFuZGxlIGtlcm5l
bCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgYXQgdmlydHVhbCBhZGRyZXNzIDAwMDAwMDAwMDAw
MDAwMDgKPiAgTWVtIGFib3J0IGluZm86Cj4gIC4uLgo+ICBNb2R1bGVzIGxpbmtlZCBpbjogY3Jj
dDEwZGlmX2NlIGhhbnRyb192cHUgc25kX3NvY19zaW1wbGVfY2FyZCBzbmRfc29jX3NpbXBsZV9j
YXJkX3V0aWxzIHY0bDJfdnA5IHY0bDJfaDI2NCByb2NrY2hpcF9zYXJhZGMgdjRsMl9tZW0ybWVt
IHZpZGVvYnVmMl9kbWFfY29udGlnIHZpZGVvYnVmMl9tZW1vcHMgcnRjX3JrODA4IHZpZGVvYnVm
Ml92NGwyIGluZHVzdHJpYWxpb190cmlnZ2VyZWRfYnVmZmVyIHJvY2tjaGlwX3RoZXJtYWwgZHdt
YWNfcmsgc3RtbWFjX3BsYXRmb3JtIHN0bW1hYyB2aWRlb2RldiBrZmlmb19idWYgZGlzcGxheV9j
b25uZWN0b3IgdmlkZW9idWYyX2NvbW1vbiBwY3NfeHBjcyBtYyByb2NrY2hpcGRybSBhbmFsb2dp
eF9kcCBkd19taXBpX2RzaSBkd19oZG1pIGRybV9kaXNwbGF5X2hlbHBlciBwYW5mcm9zdCBkcm1f
c2htZW1faGVscGVyIGdwdV9zY2hlZCBpcF90YWJsZXMgeF90YWJsZXMgaXB2Ngo+ICBDUFU6IDMg
UElEOiAxNzYgQ29tbTogdjRsX2lkIE5vdCB0YWludGVkIDYuMy4wLXJjNy1uZXh0LTIwMjMwNDIw
ICMxMzQ4MQo+ICBIYXJkd2FyZSBuYW1lOiBIYXJka2VybmVsIE9EUk9JRC1NMSAoRFQpCj4gIHBz
dGF0ZTogNjA0MDAwMDkgKG5aQ3YgZGFpZiArUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBF
PS0tKQo+ICBwYyA6IGhhbnRyb190cnlfZm10KzB4YTAvMHgyNzggW2hhbnRyb192cHVdCj4gIGxy
IDogaGFudHJvX3RyeV9mbXQrMHg5NC8weDI3OCBbaGFudHJvX3ZwdV0KPiAgLi4uCj4gIENhbGwg
dHJhY2U6Cj4gICBoYW50cm9fdHJ5X2ZtdCsweGEwLzB4Mjc4IFtoYW50cm9fdnB1XQo+ICAgaGFu
dHJvX3NldF9mbXRfb3V0KzB4M2MvMHgyOTggW2hhbnRyb192cHVdCj4gICBoYW50cm9fcmVzZXRf
cmF3X2ZtdCsweDk4LzB4MTI4IFtoYW50cm9fdnB1XQo+ICAgaGFudHJvX3NldF9mbXRfY2FwKzB4
MjQwLzB4MjU0IFtoYW50cm9fdnB1XQo+ICAgaGFudHJvX3Jlc2V0X2VuY29kZWRfZm10KzB4OTQv
MHhjYyBbaGFudHJvX3ZwdV0KPiAgIGhhbnRyb19yZXNldF9mbXRzKzB4MTgvMHgzOCBbaGFudHJv
X3ZwdV0KPiAgIGhhbnRyb19vcGVuKzB4ZDQvMHgyMGMgW2hhbnRyb192cHVdCj4gICB2NGwyX29w
ZW4rMHg4MC8weDEyMCBbdmlkZW9kZXZdCj4gICBjaHJkZXZfb3BlbisweGMwLzB4MjJjCj4gICBk
b19kZW50cnlfb3BlbisweDEzYy8weDQ4Ywo+ICAgdmZzX29wZW4rMHgyYy8weDM4Cj4gICBwYXRo
X29wZW5hdCsweDU1MC8weDkzNAo+ICAgZG9fZmlscF9vcGVuKzB4ODAvMHgxMmMKPiAgIGRvX3N5
c19vcGVuYXQyKzB4YjQvMHgxNjgKPiAgIF9fYXJtNjRfc3lzX29wZW5hdCsweDY0LzB4YWMKPiAg
IGludm9rZV9zeXNjYWxsKzB4NDgvMHgxMTQKPiAgIGVsMF9zdmNfY29tbW9uKzB4MTAwLzB4MTIw
Cj4gICBkb19lbDBfc3ZjKzB4M2MvMHhhOAo+ICAgZWwwX3N2YysweDQwLzB4YTgKPiAgIGVsMHRf
NjRfc3luY19oYW5kbGVyKzB4YjgvMHhiYwo+ICAgZWwwdF82NF9zeW5jKzB4MTkwLzB4MTk0Cj4g
IENvZGU6IDk3ZmM4YTdmIGY5NDBhYTgwIDUyODY0YTYxIDcyYTY4NmMxIChiOTQwMDgwMCkgCj4g
IC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQo+IAo+IEZpeGVzOiBkYjZmNjhi
NTFlNWMgKCJtZWRpYTogdmVyaXNpbGljb246IERvIG5vdCBzZXQgY29udGV4dCBzcmMvZHN0IGZv
cm1hdHMgaW4gcmVzZXQgZnVuY3Rpb25zIikKPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93
c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gSXQgbG9va3MgdGhhdCBJJ3Zl
IG1pc3NlZCB0aGUgZmFjdCB0aGF0IHRoZSBmaXJzdCBmaXggbWVyZ2VkIGFzIGNvbW1pdAo+IGYx
MDBjZTNiYmQ2YSAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogRml4IGNyYXNoIHdoZW4gcHJvYmluZyBl
bmNvZGVyIikgZGlkCj4gbm90IGZpeCBhbGwgdGhlIGlzc3VlcyBpbnRyb2R1Y2VkIGJ5IGRiNmY2
OGI1MWU1YyAoIm1lZGlhOiB2ZXJpc2lsaWNvbjoKPiBEbyBub3Qgc2V0IGNvbnRleHQgc3JjL2Rz
dCBmb3JtYXRzIGluIHJlc2V0IGZ1bmN0aW9ucyIpLiBJJ20gcmVhbGx5IHNvcnJ5Cj4gZm9yIHRo
YXQuCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0
bDIuYyB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vaGFudHJvX3Y0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
aGFudHJvX3Y0bDIuYwo+IGluZGV4IDgzNTUxODUzNGUzYi4uNjE4ZWEyM2E3ZDQ5IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+
ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+
IEBAIC0zMTMsMTcgKzMxMywxNyBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0IHN0
cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gIAkJLyogRmlsbCByZW1haW5pbmcgZmllbGRzICovCj4g
IAkJdjRsMl9maWxsX3BpeGZtdF9tcChwaXhfbXAsIGZtdC0+Zm91cmNjLCBwaXhfbXAtPndpZHRo
LAo+ICAJCQkJICAgIHBpeF9tcC0+aGVpZ2h0KTsKPiAtCQlpZiAoY3R4LT52cHVfc3JjX2ZtdC0+
Zm91cmNjID09IFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNFICYmCj4gKwkJaWYgKGZtdC0+Zm91cmNj
ID09IFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNFICYmCgpJbiB0aGlzIGNvbnRleHQsIHdlIGhhdmUg
IWNvZGVkLCBzbyBmbXQtPmZvdXJjYyB3aWxsIG5ldmVyIGJlIGFueSBvZiBIMjY0LCBWUDkKb3Ig
SEVWQywgc28gd2UnbGxuZXZlciBhbGxvY2F0ZSBzcGFjZSBmb3IgbW90aW9uIHZlY3Rvci4gSSdt
IHN1cnByaXNlIHlvdSBhcmUKZ2V0dGluZyBhbnl0aGluZyB3b3JraW5nIGFmdGVyIHRoYXQuIFdo
YXQgdGhpcyBjb2RlIGlzIHRyeWluZyB0byBhY2hpZXZlIGlzIHRvCnBhZCB0aGUgc2l6ZSBvZiBy
YXcgaW1hZ2VzIGRlcGVuZGluZyBvbiB0aGUgc2VsZWN0ZWQgY29kZWQgZm9ybWF0IChvcHBvc2l0
ZQpxdWV1ZSkuCgpJIHRoaW5rIHRoZSBwcm9wZXIgZml4IGlzIHRvIGFjdHVhbGx5IGZpeCB0aGUg
ZGVmYXVsdCBjb2RlZCBmb3JtYXQgc2V0dXAuIFRoaXMKd2lsbCBlbnN1cmUgdGhhdCB2cHVfc3Jj
X2ZtdCBpcyBhbHdheXMgdmFsaWQuIFRoZSBzYW1lIHBvaW50ZXIgY2FuIGJlIHVzZWQgaW4Kc3Rh
cnQtc3RyZWFtaW5nIGl0IHNlZW1zLgoKPiAgCQkgICAgIWhhbnRyb19uZWVkc19wb3N0cHJvYyhj
dHgsIGZtdCkpCj4gIAkJCXBpeF9tcC0+cGxhbmVfZm10WzBdLnNpemVpbWFnZSArPQo+ICAJCQkJ
aGFudHJvX2gyNjRfbXZfc2l6ZShwaXhfbXAtPndpZHRoLAo+ICAJCQkJCQkgICAgcGl4X21wLT5o
ZWlnaHQpOwo+IC0JCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19mbXQtPmZvdXJjYyA9PSBWNEwyX1BJ
WF9GTVRfVlA5X0ZSQU1FICYmCj4gKwkJZWxzZSBpZiAoZm10LT5mb3VyY2MgPT0gVjRMMl9QSVhf
Rk1UX1ZQOV9GUkFNRSAmJgo+ICAJCQkgIWhhbnRyb19uZWVkc19wb3N0cHJvYyhjdHgsIGZtdCkp
Cj4gIAkJCXBpeF9tcC0+cGxhbmVfZm10WzBdLnNpemVpbWFnZSArPQo+ICAJCQkJaGFudHJvX3Zw
OV9tdl9zaXplKHBpeF9tcC0+d2lkdGgsCj4gIAkJCQkJCSAgIHBpeF9tcC0+aGVpZ2h0KTsKPiAt
CQllbHNlIGlmIChjdHgtPnZwdV9zcmNfZm10LT5mb3VyY2MgPT0gVjRMMl9QSVhfRk1UX0hFVkNf
U0xJQ0UgJiYKPiArCQllbHNlIGlmIChmbXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRfSEVWQ19T
TElDRSAmJgo+ICAJCQkgIWhhbnRyb19uZWVkc19wb3N0cHJvYyhjdHgsIGZtdCkpCj4gIAkJCXBp
eF9tcC0+cGxhbmVfZm10WzBdLnNpemVpbWFnZSArPQo+ICAJCQkJaGFudHJvX2hldmNfbXZfc2l6
ZShwaXhfbXAtPndpZHRoLAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
