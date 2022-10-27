Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97508ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 13:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+9utLLtVlxNHhW6+1wxEwM8RuxQWntBuQCRHjPDsNk=; b=H0MmCsHVEnOxkw
	oVg+3e8zmBjW2KQQG4JA2+zeAoDc+SFOs8VQ2eVbvO91GVvLK9vy91xDMSTqnXPgNCO1gAinl5AHM
	fc+Igh5ddwE6UHMltCNLtfVRM6qn5Xse+9KdNSaidcO/grLUQ6DLwXNkquRr9iWGN+MTyrnl4g0VF
	QxKqGBXsAhsCFyc9C90SVqvV5Hn60FX3PZvShb//BbSsNXzaXMnTuzFeZtnPec1jSQw2CNopgXEnh
	M1RIKl9xOIYnlDmrIdPx8Cqmiq0V+ueec50fvEJ2y64CSQqQsDzdBtMv14CNXXSOFd7aj8SFdJrQq
	rK3YOS5o5sQItApbyyNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo36J-00DbE2-NU; Thu, 27 Oct 2022 13:39:15 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo2yQ-00DXQQ-QT
	for linux-rockchip@lists.infradead.org; Thu, 27 Oct 2022 13:31:08 +0000
Received: by mail-qv1-xf32.google.com with SMTP id e15so1256430qvo.4
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Oct 2022 06:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1B0as6qvgEusJAHWP9PQtAwIU23LTfV1igQHrsAgsGc=;
        b=1DMmN9r4Vqu8/Ln9CA2Wah4LyITkT7R0TeXDoLNtydzX6KbzisELATCEbYXLHdcxT5
         yOXLaQBkvGLLHku0FY2/E/QJJIjcZFHJd/alcRG1UIKxL/yq+Eh5FHFHY0bUbJUM/wqM
         MmMBXSpPkbNahoY70R+NYg3IhytU2OdbzvQG/mObsQINjXztP+zG7sTP8+9tl6Oi1dYg
         qFJZ3uASSUjjAmBOs/zhvoNuOuaLyQgIn3YoVaMrQ2QKUMSEugcc9L4d6PYaUJo/w+xW
         7CM29Cu0pf+fWPNhLwaTgkSeTeNq1rg2lzE+P0SB89mqsT4DHba/5Q+2rW+tnZCHfmSF
         XzRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1B0as6qvgEusJAHWP9PQtAwIU23LTfV1igQHrsAgsGc=;
        b=zsseeq1LjZyinPLO8+G9gby/5yDlFTbSxrkmmsxrrACpggORigHGJMsh//mUwMled5
         DK3ZfwPoBoURbkhJz1Joc5IfVxVennCfkhd60yQS5gv1zKROvffNIojxKFv0/O21xkYF
         G9z9gSGt/WyTx+PSTH1fIyVYNIlcrzep6nCPfGHiBQq1xuRnNHWayDCxd4xzg7/XVqOi
         Yk3ZJLnzVRhgqlum0BNCOfMqEX1A6v3SvX7l0Vm+Z0FXC6mqIfOk09AqDQli4caYJ4TI
         KfOC1Ghv20T7+sT1rge731bOfTbuhlCq7QmcLR0e8swvzQZdkaWVl8oSCGtf5dcFjiGc
         fClA==
X-Gm-Message-State: ACrzQf0nDdZBbi5kt23VeJba3Y2nJd2AzBapymyenHIh31DYZz1NmW+w
	nxLW0jSd1jvtdW4yTBoc9ZSD5Q==
X-Google-Smtp-Source: AMsMyM5ntsKQEhEdjJhlKZ1V0z2QlyKyG95g+zOV1ibMsSGDt9dJqEaQOMzFRmaT9Mn23CKsL5g50Q==
X-Received: by 2002:a05:6214:250c:b0:4b8:78d7:e718 with SMTP id gf12-20020a056214250c00b004b878d7e718mr33101450qvb.97.1666877464100;
        Thu, 27 Oct 2022 06:31:04 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id u19-20020a05620a0c5300b006ef0350db8asm943153qki.128.2022.10.27.06.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Oct 2022 06:31:03 -0700 (PDT)
Message-ID: <85205ab7833ec260447e1f68b9264acbf3130112.camel@ndufresne.ca>
Subject: Re: [PATCH] media: rkvdec: Add required padding
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
	linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Ezequiel Garcia
 <ezequiel@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com
Date: Thu, 27 Oct 2022 09:31:02 -0400
In-Reply-To: <20221027080217.6290-1-andrzej.p@collabora.com>
References: <20221027080217.6290-1-andrzej.p@collabora.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_063107_134027_122E8698 
X-CRM114-Status: GOOD (  15.89  )
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

TGUgamV1ZGkgMjcgb2N0b2JyZSAyMDIyIMOgIDEwOjAyICswMjAwLCBBbmRyemVqIFBpZXRyYXNp
ZXdpY3ogYSDDqWNyaXTCoDoKPiBUaGUgYWRkcmVzc2VzIG9mIHR3byBlbGVtZW50cyBvZiB0aGUg
c2VnbWFwW11bXSBtZW1iZXIgYXJlIHBhc3NlZCB0byB0aGUKPiBoYXJkd2FyZSB3aGljaCBleHBl
Y3RzIDEyOC1iaXQgYWxpZ25lZCBhZGRyZXNzZXMuIEhvd2V2ZXIsIHdpdGhvdXQgdGhpcwo+IHBh
dGNoIG9mZnNldG9mKHN0cnVjdCBya3ZkZWNfdnA5X3ByaXZfdGJsLCBzZWdtYXBbMF0pIGlzIGFu
IG9kZCBudW1iZXIKPiAoMjQyMSkgYnV0IHRoZSBoYXJkd2FyZSBqdXN0IGlnbm9yZXMgdGhlIDUg
bGVhc3Qgc2lnbmlmaWNhbnQgYml0cyBvZiB0aGUKPiBhZGRyZXNzLiBBcyBhIHJlc3VsdCwgdGhl
IGhhcmR3YXJlIHdyaXRlcyB0aGUgc2VnbWVudGF0aW9uIG1hcCB0byBpbmNvcnJlY3QKPiBsb2Nh
dGlvbnMuCj4gCj4gSW5zZXJ0aW5nIDExIGJ5dGVzIG9mIHBhZGRpbmcgY29ycmVjdHMgdGhpcyBz
aXR1YXRpb24gYnkgbWFraW5nIHRoZSBzYWlkCj4gYWRkcmVzc2VzIGRpdmlzaWJsZSBieSAxNiAo
aS5lLiBhbGlnbmVkIG9uIGEgMTI4LWJpdCBib3VuZGFyeSkuCj4gCj4gU2lnbmVkLW9mZi1ieTog
QW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4KClJldmlld2Vk
LWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+CgpG
b3IgYmFja3BvcnQgcHVycG9zZXMsIHBlcmhhcHMgYWRkID8KCkZpeGVzOiBmMjU3MDljNGZmMTUg
KCJtZWRpYTogcmt2ZGVjOiBBZGQgdGhlIFZQOSBiYWNrZW5kIikJCgo+IC0tLQo+ICBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy12cDkuYyB8IDMgKysrCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JrdmRlYy9ya3ZkZWMtdnA5LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3Jr
dmRlYy12cDkuYwo+IGluZGV4IGQ4YzFjMGRiMTVjNy4uY2ZhZTk5YjQwY2NiIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLXZwOS5jCj4gKysrIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtdnA5LmMKPiBAQCAtODQsNiArODQsOCBA
QCBzdHJ1Y3Qgcmt2ZGVjX3ZwOV9wcm9icyB7Cj4gIAkJc3RydWN0IHJrdmRlY192cDlfaW50ZXJf
ZnJhbWVfcHJvYnMgaW50ZXI7Cj4gIAkJc3RydWN0IHJrdmRlY192cDlfaW50cmFfb25seV9mcmFt
ZV9wcm9icyBpbnRyYV9vbmx5Owo+ICAJfTsKPiArCS8qIDEyOCBiaXQgYWxpZ25tZW50ICovCj4g
Kwl1OCBwYWRkaW5nMVsxMV07Cj4gIH07Cj4gIAo+ICAvKiBEYXRhIHN0cnVjdHVyZSBkZXNjcmli
aW5nIGF1eGlsaWFyeSBidWZmZXIgZm9ybWF0LiAqLwo+IEBAIC0xMDA2LDYgKzEwMDgsNyBAQCBz
dGF0aWMgaW50IHJrdmRlY192cDlfc3RhcnQoc3RydWN0IHJrdmRlY19jdHggKmN0eCkKPiAgCj4g
IAljdHgtPnByaXYgPSB2cDlfY3R4Owo+ICAKPiArCUJVSUxEX0JVR19PTihzaXplb2YocHJpdl90
YmwtPnByb2JzKSAlIDE2KTsgLyogZW5zdXJlIHByb2JzIHNpemUgaXMgMTI4LWJpdCBhbGlnbmVk
ICovCj4gIAlwcml2X3RibCA9IGRtYV9hbGxvY19jb2hlcmVudChya3ZkZWMtPmRldiwgc2l6ZW9m
KCpwcml2X3RibCksCj4gIAkJCQkgICAgICAmdnA5X2N0eC0+cHJpdl90YmwuZG1hLCBHRlBfS0VS
TkVMKTsKPiAgCWlmICghcHJpdl90YmwpIHsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
