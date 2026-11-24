Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BFC606A322
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 01:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oL5J+bar;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=oeM5/T4W
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7bv5DdNfHYCtc6pIOOOvKqPAcFRKQlPkL02vU5ZBtqc=; b=oL5J+baraqaU/3mSHVMrGt/+Gs
	4iitsWc7sWs1DKMhLp9LYFwUnmiIB60ThSXyt1AZAlMwzoCff8ABATNNGU9gsKMr0vWKl/Y+MyVmo
	VdbC4H7C3Opme1iQoz9z6+RNgdKYIHN5QyDHi5TKQaBEFcmVOC1XUtqquZ+nrLmC2mOYgGuD7YdVm
	MPSlzLl4YV3YZzTo2PjH1tBxXYZ3nxlEFAISGDafLpldKSDQLNMQMDsLaIsIYrN/XaienxKrzTBXt
	2Gu1IWk7YRgW3HwW810EW36Qb1MtvITYGdxJK8bH4phvk+2ZPV4Yz1Z+FJqypoB28H4s5Uhx7qFgZ
	Kz39WhTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVf4O-00000005Icd-3WBv;
	Tue, 24 Nov 2026 01:11:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVf4N-00000005IcP-1tjf;
	Tue, 24 Nov 2026 01:11:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C6204430A8;
	Tue, 24 Nov 2026 01:11:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CC211F000C4;
	Tue, 24 Nov 2026 01:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795482698;
	bh=wgEWWEO3qdUk7hR9XMnjX/hWMNEVu9/1SaZ+lWZNOmQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=oeM5/T4WRAeChpjv3sI9v50CsIdchJV2dJLzdy3D1UyfZyHPryAQwdkCExfiOhS2P
	 auMQLvY84UFxPjnTALlROLlweVqtajxuW1Mz+TA7nDN3pi9MLMiSTX+ts0TkDrqf95
	 xYUfC8QFONSxDhiRUmS3ikrjE+JuhUT8KvMRFycWXP6dTj90M4iQ/LNo76OMuedUWS
	 x2vc/7GP8azbj5Yv3OqBvzN6seFvd/C6NnqAUCLgB8fcWC6y/LcBbr+UbMTpIGQPoO
	 rlw1imgepY3c+OmUrAtE/g5f9RNcbaAQ1ARTkCIGIQUtgpjZkK6kYuFzsB8M6dBCiu
	 Fl71pzPQRuL8w==
Subject: Re: [PATCH net v8 1/5] net: phy: move irq_suspended and irq_rerun out
 of the bitfield
From: netdev-bot+sashiko@kernel.org
To: iav@iav.lv
Cc: andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, edumazet@kernel.org, kuba@kernel.org, pabeni@redhat.com,
 tglx@kernel.org, linux-pm@vger.kernel.org, maxime.chevallier@bootlin.com,
 lukas@wunner.de, rafael.j.wysocki@intel.com, wei.fang@nxp.com,
 niklas.soderlund@ragnatech.se, paul@pbarker.dev,
 florian.fainelli@broadcom.com, opendmb@gmail.com, Thangaraj.S@microchip.com,
 shenwei.wang@nxp.com, Haoning.CHENG@cn.bosch.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Tue, 24 Nov 2026 01:11:36 +0000
Message-ID: <179548269686.3135.9876460710453451136@kernel.org>
In-Reply-To: <20261123-b4-phylib-mac-pm-irq-v3-v8-1-e9f706e79614@iav.lv>
References: <20261123-b4-phylib-mac-pm-irq-v3-v8-1-e9f706e79614@iav.lv>
X-sashiko-severity: Low
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIHBhdGNoIGFkZHMgdGhpcyBjb21t
ZW50IGFib3ZlIHRoZSB0d28gbmV3IGJvb2xzIGluIHN0cnVjdAogIHBoeV9kZXZpY2UgKGluY2x1
ZGUvbGludXgvcGh5LmgpOiAiTm90IGJpdGZpZWxkczogcGh5X2ludGVycnVwdCgpIGFuZOKApgoK
LS0KCm5ldDogcGh5OiBtb3ZlIGlycV9zdXNwZW5kZWQgYW5kIGlycV9yZXJ1biBvdXQgb2YgdGhl
IGJpdGZpZWxkCgpUaGlzIGNvbW1pdCB0dXJucyBpcnFfc3VzcGVuZGVkIGFuZCBpcnFfcmVydW4g
aW4gc3RydWN0IHBoeV9kZXZpY2UgZnJvbQoxLWJpdCBiaXRmaWVsZHMgaW50byBzZXBhcmF0ZSBi
b29scy4gcGh5X2ludGVycnVwdCgpIGFuZCB0aGUgUE0gY2FsbGJhY2tzCndyaXRlIHRoZW0gd2l0
aG91dCBwaHlkZXYtPmxvY2ssIHNvIGEgcmVhZC1tb2RpZnktd3JpdGUgb24gdGhlIHNoYXJlZApi
aXRmaWVsZCB3b3JkIGNvdWxkIGxvc2UgYSBjb25jdXJyZW50IGlycV9yZXJ1biB1cGRhdGUuIFRo
ZSBjYWxsIHNpdGVzIGluCnBoeS5jIGFuZCBwaHlfZGV2aWNlLmMgYXJlIHVwZGF0ZWQgdG8gdXNl
IHRydWUvZmFsc2UuCgpbIC4uLiBdCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BoeS5o
IGIvaW5jbHVkZS9saW51eC9waHkuaAo+IGluZGV4IDIxYWZjMjA4MmIxNzQuLjU5Yzc1Mjk2ZDUz
NTUgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9waHkuaAo+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvcGh5LmgKPiBAQCAtNzI2LDggKzcyNiwxMSBAQCBzdHJ1Y3QgcGh5X2RldmljZSB7Cj4gIAo+
ICAJLyogSW50ZXJydXB0cyBhcmUgZW5hYmxlZCAqLwo+ICAJdW5zaWduZWQgaW50ZXJydXB0czox
Owo+IC0JdW5zaWduZWQgaXJxX3N1c3BlbmRlZDoxOwo+IC0JdW5zaWduZWQgaXJxX3JlcnVuOjE7
Cj4gKwkvKiBOb3QgYml0ZmllbGRzOiBwaHlfaW50ZXJydXB0KCkgYW5kIHRoZSBQTSBjYWxsYmFj
a3Mgd3JpdGUgdGhlbQo+ICsJICogd2l0aG91dCBwaHlkZXYtPmxvY2sKPiArCSAqLwoKW1NldmVy
aXR5OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCBjb3VsZCB0aGlzIGNvbW1lbnQgbWlzbGVh
ZCByZWFkZXJzIGFib3V0IHRoZQpiaXRmaWVsZHMgdGhhdCByZW1haW4/CgpUaGUgcmVhc29uIGl0
IGdpdmVzLCB3cml0dGVuIGJ5IHRoZSBQTSBjYWxsYmFja3Mgd2l0aG91dCBwaHlkZXYtPmxvY2ss
CmFsc28gYXBwbGllcyB0byBpbnRlcnJ1cHRzOjEgb24gdGhlIGxpbmUganVzdCBhYm92ZSBpdC4g
UEhZIGRyaXZlciBzdXNwZW5kCmNhbGxiYWNrcyBydW4gZnJvbSBwaHlfc3VzcGVuZCgpLT5waHlk
cnYtPnN1c3BlbmQoKSwgYW5kIHBoeV9zdXNwZW5kKCkKZG9lcyBub3QgdGFrZSBwaHlkZXYtPmxv
Y2suIEZvciBleGFtcGxlLCBpbiBkcDgzODY3X3N1c3BlbmQoKToKCmRyaXZlcnMvbmV0L3BoeS9k
cDgzODY3LmM6ZHA4Mzg2N19zdXNwZW5kKCkgewogICAgLi4uCglpZiAocGh5X2ludGVycnVwdF9p
c192YWxpZChwaHlkZXYpKSB7CgkJcGh5ZGV2LT5pbnRlcnJ1cHRzID0gUEhZX0lOVEVSUlVQVF9E
SVNBQkxFRDsKCQlkcDgzODY3X2NvbmZpZ19pbnRyKHBoeWRldik7Cgl9CiAgICAuLi4KfQoKbWFy
dmVsbC04OHEyeHh4LmMgYW5kIG1pY3JlbC5jIGRvIHRoZSBzYW1lIHRoaW5nIGluIHRoZWlyIHN1
c3BlbmQgcGF0aHMuCgpwaHlfc3VzcGVuZCgpIGFsc28gc2V0cyBwaHlkZXYtPnN1c3BlbmRlZCA9
IHRydWUgd2l0aG91dCB0aGUgbG9jaywgYW5kCnN1c3BlbmRlZDoxIGlzIGluIHRoZSBzYW1lIGJp
dGZpZWxkIHdvcmQuCgpCb3RoIGZpZWxkcyBzdGlsbCBzaGFyZSB0aGF0IHdvcmQgd2l0aCBsaW5r
OjEgYW5kIGF1dG9uZWdfY29tcGxldGU6MSwKd2hpY2ggdGhlIHN0YXRlIG1hY2hpbmUgd3JpdGVz
IHVuZGVyIHBoeWRldi0+bG9jay4gRnJvbSB0aGlzIGNvbW1lbnQsIGEKcmVhZGVyIGNvdWxkIGNv
bmNsdWRlIHRoYXQgdGhlIHJlbWFpbmluZyBiaXRmaWVsZHMgaW4gdGhlIHdvcmQgYXJlIG9ubHkK
d3JpdHRlbiB1bmRlciBwaHlkZXYtPmxvY2suCgpXb3VsZCBpdCBiZSBjbGVhcmVyIHRvIHdvcmQg
dGhlIGNvbW1lbnQgc28gaXQgZG9lc24ndCBpbXBseSB0aGF0IHJ1bGU/Ckl0IGNvdWxkLCBmb3Ig
ZXhhbXBsZSwganVzdCBkZXNjcmliZSB0aGUgaXJxX3JlcnVuIHJhY2UgdGhhdCB0aGlzIHBhdGNo
CmZpeGVzLgoKPiArCWJvb2wgaXJxX3N1c3BlbmRlZDsKPiArCWJvb2wgaXJxX3JlcnVuOwo+ICAK
PiAgCXVuc2lnbmVkIGRlZmF1bHRfdGltZXN0YW1wOjE7Cj4KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4LmRldi9zYXNoaWtvLyMvcGF0Y2hzZXQv
MjAyNjExMjMtYjQtcGh5bGliLW1hYy1wbS1pcnEtdjMtdjgtMC1lOWY3MDZlNzk2MTQlNDBpYXYu
bHYKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
