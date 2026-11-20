Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F1C606A330
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 16:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Q2ihWtHj;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=ZbOeqNtt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6ljk7yjL/Uk9Ju3prFAluGvUHDzYeAULMfn1OJ9sR7k=; b=Q2ihWtHjy7yttoLwTd3PIHCFjS
	nJgLh/upo1O/cgfElW1XlYgRby7iir8mPeo823KWdJiW58IEVzz90xOzckjeKtlLE6+swW9b7aiV6
	NjyHy1ch+5M4opYonnj2xNwxCzeTMDaMTQqwYZPujmRO5IrY9Ej6Z7q/10wC1D9MFU/OLyob3d9Vb
	Doc0XKsD91aZqBgCN1cAMr5uOZ54eCeU+TvNoYdVUTa3mvPpbfANSRTOjT2eeWzaOmsKKPsf7WsgA
	bpdGhCJoSz+MU+QNd0X9637KRWF+ZBBB+9EHxfDlqMbp7Bs/uFzcpuRIMw7k27WoQR2EFpEYPt7iK
	gcTSQSUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xURu5-0000000FbRN-4BzD;
	Fri, 20 Nov 2026 16:56:02 +0000
Received: from out162-62-57-210.mail.qq.com ([162.62.57.210])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xURtc-0000000FbKz-1EWx;
	Fri, 20 Nov 2026 16:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1795193727; bh=snCMBOAglodr748wRnt9xySVHP/f+6uaFvHz0+tjdM0=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=ZbOeqNttmDLDSsQ6C1wKyG4shRRWkqJg2zW6imq0aTNIK5pLfQ9T1Tp/qqOjEzL6f
	 M/Eq2x3rWYetUqST5iTggUgWAxO2Ma/1ojPHS0bBrWBnHI7+2AShksHRjtZHf0D9+J
	 n4ZY6VOPpNJyf+rV4POFtzjve3eizlB/FbVJXjsI=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-XMAILINFO: NB8AK7fcAs0KdrHQ5MculXsSnCvP/x+NaTXr1bzxOr0qWgcYZHV/jV0qCihvZU
	 D6sNKZ+9bwHJCV6T7pFiiux/A5lqnrJtZeIrPX1MTQG7SuiaoSZkzO494h8jX5aVx1AUnOOebH8Ru
	 Ev5ogkSY0Pk1L+ZTJj64CCai+sEKAPvirvCsvm95WLd4Otx/D5yEUHMMrcr+D2w9GjaR15bjHcfyd
	 0+Sr8q7zarpX5ysqvkWI7+jrvzIQ9NQj9NeehpyI86ouwkIB6xCO6VUK4yM+0CVkphfLlmD+dOKzb
	 LdIHUGwH/Wk+6Shjw8v4luncHs+eLS5I56x4Hj8r8/43faoANN/m6YLWt8t2UrEe8ed48U9lOffOb
	 bD43kWfShPpcGvMgiOy4T/4OLdWALkTMBIqqTxp413x/ao7GCWtNwgMrbAIIl0Vw278Q1tCjwI17H
	 ioJyOXc5oH1D03s7H4rBCqGRKkQ/st+38ikGwm6CRWrXqlNSG8uzA4+BQpk7Fdhtw4KNJ5a51sHpq
	 Us2G47XkCKNKttJ4SUIEMaoV351BtekCx8uGWHKjHzgZ8sWSgPTdpoTRqXl7c3boUUq+jeUmSzdGl
	 eGjOok3HzIjyx4HI3AvTu8c4km0UFt2kv7bNCgA797cwNuzy5SwuQc77iBORLjSaxIvchfPnlhgBn
	 rqiO42f1fe67qKc/gXy/socyzdx87cxUZu6rQrdjuSNAHBq2ASfGnUM+3Uxko3XeAB3bmfBep1sZP
	 06BZJHkSSAshxbIOty+Z1k07ADeynjRLF+tCba3UR4DOctxHZFDXk5h6Re+waOY6R6PLqvwj3pLbG
	 gVzd7fCm0zbu2wQabiNnd6O/7wxHh2FT3KVrBeKW9ynzDNmWTsK1RJ1X0iozdR71HDHh/YjypoLfI
	 EZBlzusn0dCYQMV5ptrQZnAT+xwG8pU4M/a83gVSioNIs4cvmtDiIW0F1GL6BGFgRLIhTz/wwmPbC
	 v+lkpgmOai0eTj1IuM7k4EE3jr+REaoVaZvI9bmtD0vS7KpZGpahB4UeRrVrCKC50oNC3ZbVCfmDw
	 pGlSijwrJ5VdnABEKzVwHNU75JbUgLiWeNVoRPSySaJMf3Rq1hvGphg8r1S/GCSA8sqtI3y7+zei2
	 0sfer53Js+0lA2jKzbQRfRKI
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?Sm9uYXMgS2FybG1hbg==?=" <jonas@kwiboo.se>
Cc: "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?RWxhaW5lIFpoYW5n?=" <zhangqing@rock-chips.com>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2] dt-bindings: soc: rockchip: Add RK3572 PMU and GRF
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Sat, 21 Nov 2026 00:55:25 +0800
X-Priority: 3
Message-ID: <tencent_71414D193416327F09E723DB01C688137E08@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261119-add-board-ok3572-c-soc-v2-1-86f331024ae6@qq.com>
	<0c495655-9ec8-4d16-a33e-ef4ef3a8f2bc@kwiboo.se>
In-Reply-To: <0c495655-9ec8-4d16-a33e-ef4ef3a8f2bc@kwiboo.se>
X-QQ-mid: xmsezb41-0t1795193725tg1wj8w7y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_085534_588298_B7E68B54 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -1.8 (-)
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
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSm9uYXMsCgo+ID7CoGRpZmbCoC0tZ2l0wqBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWzCoGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+ID7CoGluZGV4wqBlOTRjODNkN2MxMzgu
LjBlMGJmOGUyMzRjOMKgMTAwNjQ0Cj4gPsKgLS0twqBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwKPiA+wqArKyvCoGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+ID7CoEBAwqAtMzAs
NsKgKzMwLDEywqBAQMKgcHJvcGVydGllczoKPiA+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAtwqByb2NrY2hpcCxyazM1NjgtcGlwZS1ncmYKPiA+wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAtwqByb2NrY2hpcCxyazM1NjgtcGlwZS1waHktZ3JmCj4gPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgLcKgcm9ja2NoaXAscmszNTY4LXVzYjJwaHktZ3JmCj4gPsKg
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAtwqByb2NrY2hpcCxyazM1NzItaW9jLWdyZgo+
ID7CoCvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLcKgcm9ja2NoaXAscmszNTcyLW52bTAt
Z3JmCj4gPsKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAtwqByb2NrY2hpcCxyazM1NzIt
cGhwLWdyZgo+ID7CoCvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLcKgcm9ja2NoaXAscmsz
NTcyLXBpcGUtcGh5LWdyZgo+ID7CoCvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLcKgcm9j
a2NoaXAscmszNTcyLXBtdTAtZ3JmCj4KPiBBcmUgd2UgbWlzc2luZyByb2NrY2hpcCxyazM1NzIt
cG11MS1ncmYgYW5kIHBvc3NpYmxlIG90aGVyIHN5c2NvbnM/CgpJIGhhdmUgbGltaXRlZCB0aW1l
IGFuZCBjYW4gb25seSB0YWtlIG9uIHNvIG11Y2ggbXlzZWxmLiBGb3IgdGhpcwpmaXJzdCByb3Vu
ZCwgSSdkIGxpa2UgdG8gZ2V0IGEgYmFzaWMgc3lzdGVtIHVwc3RyZWFtIHdpdGggQ1BVLCBVU0Is
CkdNQUMsIFVBUlQsIGFuZCBzbyBvbi4gSSd2ZSBvbmx5IGRvY3VtZW50ZWQgdGhlIEdSRiBpbnN0
YW5jZXMgSQphY3R1YWxseSB1c2UgaW4gdGhlIHByb3Bvc2VkIGRldmljZSB0cmVlLgoKT25jZSB0
aGlzIHJvdW5kIGlzIGRvbmUsIEkgcGxhbiB0byBwb3J0IGFuZCB0ZXN0IHN1cHBvcnQgZm9yIHNt
YWxsZXIKZmVhdHVyZXMgc3VjaCBhcyByZWJvb3QtbW9kZSwgRERSIGZyZXF1ZW5jeSBzY2FsaW5n
LCBPVFAsIGFuZCBUUk5HLAphcyB3ZWxsIGFzIEdQVSwgTlBVLCBQQ0llLCBDQU4sIGFuZCBvdGhl
ciBoYXJkd2FyZSBpbiBhIGZvbGxvdy11cApzZXJpZXMuCgo+IERvwqB3ZcKgbmVlZMKgYcKgc3Bl
Y2lhbMKgcm9ja2NoaXAscmszNTcyLXVzYjJwaHktZ3JmP8KgSWbCoHJrMzU3MsKgbWltaWNzCj4g
UkszNTc2wqB0aGVyZcKgYXJlwqB0d2/CoHVzYjJwaHnCoEdSRizCoGVhY2jCoG9uZcKgaWRlbnRp
Y2FswqBhbmTCoG9ubHnCoGNvdmVyaW5nCj4gdXNiMnBoecKgZnVuY3Rpb25zLgo+IAo+IFdpdGjC
oEdSRsKgY29tcGF0wqBJwqBleHBlY3TCoHRoZcKgRFTCoHNvwqBiZcKgc29tZXRoaW5nwqBsaWtl
wqBmb2xsb3dpbmc6Cj4gCj4gwqDCoHVzYjJwaHkwX2dyZjrCoHN5c2NvbkAyNjA1NDAwMMKgewo+
IGNvbXBhdGlibGXCoD3CoCJyb2NrY2hpcCxyazM1NzItdXNiMnBoeS1ncmYiOwo+IHJlZ8KgPcKg
PDB4MMKgMHgyNjA1NDAwMMKgMHgwwqAweDIwMDA+Owo+IAo+IHVzYjJwaHkwOsKgdXNiMnBoecKg
ewo+IGNvbXBhdGlibGXCoD3CoCJyb2NrY2hpcCxyazM1NzItdXNiMnBoeSI7Cj4gfTsKPiDCoMKg
fTsKPiAKPiDCoMKgdXNiMnBoeTFfZ3JmOsKgc3lzY29uQDI2MDU2MDAwwqB7Cj4gY29tcGF0aWJs
ZcKgPcKgInJvY2tjaGlwLHJrMzU3Mi11c2IycGh5LWdyZiI7Cj4gcmVnwqA9wqA8MHgwwqAweDI2
MDU2MDAwwqAweDDCoDB4MjAwMD47Cj4gCj4gdXNiMnBoeTE6wqB1c2IycGh5wqB7Cj4gY29tcGF0
aWJsZcKgPcKgInJvY2tjaGlwLHJrMzU3Mi11c2IycGh5IjsKPiB9Owo+IMKgwqB9Owo+IAo+IFRo
ZcKgdXNiMnBoecKgY2hpbGTCoG5vZGXCoHdvdWxkwqBiZcKgdGhlwqBzb2xlwqBjaGlsZMKgbm9k
ZcKgb2bCoEdSRsKgYW5kwqB0aGXCoGNoaWxkCj4gbm9kZcKgY29uc3VtZcKgd2hvbGXCoHBhcmVu
dMKgcmVnwqBzcGFjZS7CoFNob3VsZMKgdGhlecKgaW5zdGVhZMKgYmXCoG1lcmdlZD/CoFRoYXQK
PiBpc8KgaG93wqBJwqBkZXNjcmliZWTCoHRoZcKgdXNiMnBoecKgbm9kZXPCoGluwqBVLUJvb3TC
oG1haW5saW5lwqB3b3JrwqBhdMKgWzFdLgo+IAo+IFsxXcKgaHR0cHM6Ly9naXQudS1ib290LXBy
b2plY3Qub3JnL3UtYm9vdC9jb250cmlidXRvcnMva3dpYm9vL3UtYm9vdC8tL2Jsb2IvcmszNTYy
L2FyY2gvYXJtL2R0cy9yazM1NzIuZHRzaSNMMzU3LTQwMwoKU29ycnkgSSBtaXNzZWQgdGhpcy4g
SSB0b29rIHRoZSBVU0IyIFBIWSBsYXlvdXQgZGlyZWN0bHkgZnJvbSB0aGUKUkszNTcyIGRldmlj
ZSB0cmVlIGluIFJvY2tjaGlwJ3Mga2VybmVsLgoKSSBjaGVja2VkIGJvdGggUkszNTcyIGFuZCBS
SzM1NzYgaW4gUm9ja2NoaXAncyBrZXJuZWwuIE9uIFJLMzU3NiwgdGhlClVTQi9EUCBQSFkgYWxz
byByZWZlcmVuY2VzIHRoZSBVU0IyIFBIWSdzIHBhcmVudCBHUkYuIE9uIFJLMzU3MiwgSQpkaWRu
J3QgZmluZCBhbnlvbmUgdXNpbmcgdGhlIHBhcmVudCBHUkYgb3RoZXIgdGhhbiBpdHMgb3duIFVT
QjIgUEhZCmNoaWxkcmVuLgoKSSdtIGxlYW5pbmcgdG93YXJkIHlvdXIgYXBwcm9hY2ggYXMgd2Vs
bCwgc28gSSdsbCBzd2l0Y2ggdG8gb25lIG5vZGUKcGVyIFBIWSBpbiB2My4KClAuUy4gSSBwcm9i
YWJseSB3b24ndCBzZW5kIFNvQyB2MyByaWdodCBhd2F5LiBJJ2xsIHdhaXQgdW50aWwgdGhlIG90
aGVyCnJlbGF0ZWQgcGF0Y2hlcyBhcmUgYWNjZXB0ZWQgYmVmb3JlIHBvc3RpbmcgaXQuCgpCZXN0
IHJlZ2FyZHMsCkN1bmhhbyBMdQoKcHctYm90OiBjcgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
