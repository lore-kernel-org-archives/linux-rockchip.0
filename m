Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31782C4450A
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 02:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQlmZqyO4krWH7mZHJjwhfjVrk6/qGVNY/TGZbOu2/s=; b=D5HvAkHjCbTDE1
	s1fpJk2Wp0lWjgbuuH3XbGPZIylp1mrrViZn1KvQPR5x+WhTMtoILOnggpncGPYqOwvEfYVz3MROM
	yHfc2ShD29zTIe49cW8egq4QdzB4JkehA1TpnOpbwa88eeujtsuyqAv9KcEm6dMVVroF7vyf55jrn
	OeBqyl8OtWEYEbTEZx8XA7oNWlJoQ4kNqZYfuKjBJafkEjiALE5BcD+CS0YRT3vSUWWwL5/T6Scwf
	OPSF5kqdwXddV+b3AZ0dACW4oUgv1pZK4U+UAx3rig36Os+tOxoIiUgqiQWQUtfFha8iKDcAvyVka
	bRlTSJ/H6dciOqZuaQew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkYF5-00000000xuv-3pPg;
	Fri, 17 Jul 2026 02:23:59 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkYF1-00000000xqx-26Av;
	Fri, 17 Jul 2026 02:23:58 +0000
X-QQ-mid: tivesync5t1784254972te2512413
Received: from 3DB253DBDE8942B29385B9DFB0B7E889 (jiawenwu@trustnetic.com [115.200.247.46])
X-QQ-SSF: 0000000000000000000000000000000
From: =?utf-8?b?Smlhd2VuIFd1?= <jiawenwu@trustnetic.com>
X-BIZMAIL-ID: 7710639420010106097
To: "'Coia Prant'" <coiaprant@gmail.com>,
	"'Andrew Lunn'" <andrew@lunn.ch>
Cc: <kuba@kernel.org>,
	<davem@davemloft.net>,
	<edumazet@google.com>,
	<pabeni@redhat.com>,
	<andrew+netdev@lunn.ch>,
	<robh@kernel.org>,
	<krzk+dt@kernel.org>,
	<heiko@sntech.de>,
	<netdev@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>,
	<devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<linux-phy@lists.infradead.org>,
	"'Mengyuan Lou'" <mengyuanlou@net-swift.com>
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-7-coiaprant@gmail.com> <464cbdf3-2e9e-43ea-b30a-75b3d1b8a188@lunn.ch> <CALj3r0jdkDEjpO+7NOTGs+wgukKvD=fzFn4ewpurxxPswCE5GA@mail.gmail.com>
In-Reply-To: <CALj3r0jdkDEjpO+7NOTGs+wgukKvD=fzFn4ewpurxxPswCE5GA@mail.gmail.com>
Subject: RE: [RFC PATCH 06/10] net: pcs: xpcs: improve SGMII AN state handling for Rockchip RK3568
Date: Fri, 17 Jul 2026 10:22:51 +0800
Message-ID: <000c01dd1593$2ac0b0f0$804212d0$@trustnetic.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: zh-cn
Thread-Index: AQLtuIytmYACIt0zp727MFXQnXwl3AG2MkWBAlDURYICTkKn3bQdANsw
X-QQ-SENDSIZE: 520
Feedback-ID: tivesync:trustnetic.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NybvHh8+lS4LpWUIxKfwhaXMkirlaSY72wb1vohcRKO/gEOGQ3XvVM65
	f4TRnE3zowaQw7Zju4BbDiNyrQxrNxZ6vbZi+95VbEjCzyXZUwyhyLk6M7V4qBDyHgGCpTi
	ly5xhIfrvjq0CzbVUSdJWwE7/11XTbDmXB8YXfJez8Da/VdHh0Mt0sLR6d6M8t71m0k7Ly2
	c6uLyNvKUUJ4LpNC+fA4jZ4vmpX9Mwvk0ucc5Tin7ROL43vH37Z1V05ceguE6XBFhSJyEyA
	CWKBOE3pvNnWQne5SQzoEELrZFisgmF45J4MfcrFCIJyWtieiVmnzn3R+lOT6iaedAigc/o
	B1V0NR3TBQ5erBVvjD/LQUeTuiE6v1c3YQGhaV8hWeDLLl1Ez4C436xiPQGx3OGMeXM2OPB
	LQSjBuct7IVAuCekCEJl8krsYJk4LqZuKRTMEo7Qrmj5aYFbJJllhbG84auJUtLnLGzicsF
	Y0d7E/bdyIvxkgSwtPzUZTxWCVfwACXHVHwiEm2qRBKw2bSjyawsdDzPGGPHBud+v54n3iz
	N6GzMXBFJMpl+dqZn3+LHQzBJhcT6VAa+8sxjQa5r3sLtJ2bSR3pNBXb4pXzwRYHmQ3vX6E
	OAdBEnLzhl8G7bDURTWQKYVLoSa+rSVBbUQrIBX4dXoUZgjjYs8hTVr1iLVXfZqlzw/WOSO
	IBJlvh3Zn3ezzvINNFbuux203pp2tlBKpjR16LyP2oTOreZmnJZ3hhqQgNCy/hBJpMsRKpu
	KsKjlL59TQaGH1fZANJoYrzxX7VqD7eb70lLcGbFGsvFaToDzF12l3dPv3005D3mW5i4lbx
	rYCXDkmWEgv49W10C6QPn+MuY218xil71ZtrGPXq84dmixYzXyPNqBMK8PO6yiERhxMwjqy
	zFt3HLdvpeC/3p/I+ZqHk8PT04zcUnyWFfaMIuU/suGotEdOAqApeFWcnWqNNjuQJqjoze2
	WhSfO16ixE3Lx0RE8Pf5lXS3A1cQ8Cu4F10e0YyGltfdr40A6lLejMQYPnESZxAApRkKNj4
	ZH6LsF2qZdeQIzaToRs+5GIrPxUBbJkucgCq7TRkgek8TYZx8ZvlBWsPZADUeS1vH+oi70Z
	GvhKFQmay5d
X-QQ-XMRINFO: NS+P29fieYNwirDTQXjMQiTguMiDOrnzaw==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_192355_928494_1F4C5B77 
X-CRM114-Status: GOOD (  27.05  )
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

T24gV2VkLCBKdWwgMTUsIDIwMjYgNzowNSBBTSwgQ29pYSBQcmFudCB3cm90ZToKPiBBbmRyZXcg
THVubiA8YW5kcmV3QGx1bm4uY2g+IOS6jjIwMjblubQ35pyIMTXml6XlkajkuIkgMDY6NDTlhpnp
gZPvvJoKPiA+Cj4gPiBPbiBXZWQsIEp1bCAxNSwgMjAyNiBhdCAwMzowODozNEFNICswODAwLCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gPiBDb21taXQgMmEyMmI3YWUyZmEzICgibmV0OiBwY3M6IHhw
Y3M6IGFkYXB0IFdhbmd4dW4gTklDcyBmb3IgU0dNSUkgbW9kZSIpCj4gPgo+ID4gWW91IGRvIG5v
dCBhcHBlYXIgdG8gQ2M6IHRoZSBXYW5neHVuIE5JQyBwZW9wbGUuIEl0IHdvdWxkIGJlIGdvb2Qg
dG8KPiA+IGhhdmUgdGhlcmUgY29tbWVudHMgb24gdGhpcyBjaGFuZ2UuCj4gCj4gSSBhcG9sb2dp
emU7IHRoZSBvdXRwdXQgZnJvbSBnZXRfbWFpbnRhaW5lci5wbCBpcyB2ZXJ5IGxvbmcuIEnigJl2
ZQo+IGhlYXJkIHRoYXQgaGF2aW5nIHRvbyBtYW55IHJlY2lwaWVudHMgY2FuIGNhdXNlIHRoZSBQ
QVRDSCB0byBiZQo+IHJlamVjdGVkIGJ5IHRoZSBMS01MIG1haWwgc2VydmVyLgo+IAo+IEkgaGF2
ZSBhZGRlZCBXYW5neHVuIG1haW50YWluZXIgKEppYXdlbiBXdSA8amlhd2Vud3VAdHJ1c3RuZXRp
Yy5jb20+Cj4gYW5kIE1lbmd5dWFuIExvdSA8bWVuZ3l1YW5sb3VAbmV0LXN3aWZ0LmNvbT4pIHRv
IHRoZSBDQyBsaXN0Lgo+IAo+ID4gPiBGaXhlczogMmEyMmI3YWUyZmEzICgibmV0OiBwY3M6IHhw
Y3M6IGFkYXB0IFdhbmd4dW4gTklDcyBmb3IgU0dNSUkgbW9kZSIpCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+Cj4gPgo+ID4gUGxlYXNlIGRvbid0
IG1peCBmaXhlZCBhbmQgbmV3IGNvZGUuIElzIHRoaXMgYSByZWFsIGZpeD8gU2hvdWxkIGl0IGJl
Cj4gPiBiYWNrIHBvcnRlZCB0byBzdGFibGU/Cj4gCj4gSSBhbSBub3Qgc3VyZSBpZiB0aGlzIGlz
IGEgc3BlY2lmaWMgY2hhcmFjdGVyaXN0aWMgb2YgV2FuZ3h1biBOSUNzLCBhcwo+IEkgZG8gbm90
IGhhdmUgYW55IGF2YWlsYWJsZSBmb3IgdGVzdGluZy4KPiAKPiBUaGUgYmVoYXZpb3Igb2YgdGhl
IFJvY2tjaGlwIERXIFhQQ1MgSVAgY29yZSBtYXRjaGVzIHdoYXQgaXMgZGVzY3JpYmVkCj4gaW4g
dGhlIGNvbW1pdCBtZXNzYWdlIChldmVuIHRob3VnaCBwaHlsaW5rIGJyaW5ncyB0aGUgbGluayB0
byBkb3duCj4gYmFzZWQgb24gdGhlIHBoeWRldiBsaW5rIHN0YXR1cykuCj4gCj4gVGhpcyBhcHBl
YXJzIHRvIGJlIGEgYnVnIChhdCBsZWFzdCBvbiBSb2NrY2hpcCBwbGF0Zm9ybXMpIG9yIFdhbmd4
dW4KPiBOSUNzIGZlYXR1cmVzLgo+IAo+IEhvd2V2ZXIsIEkgY2Fubm90IGNvbmZpcm0gd2hldGhl
ciBXYW5neHVuIE5JQ3MgYmVoYXZlIHRoZSBzYW1lIHdheS4KPiBUaGVyZWZvcmUsIEkgaGF2ZSBr
ZXB0IHRoZWlyIGNvZGUgYXMgaXMgZm9yIG5vdy4KPiAKPiBDb3VsZCBhIFdhbmd4dW4gTklDcyBt
YWludGFpbmVyIHByb3ZpZGUgc29tZSBmZWVkYmFjayBiYXNlZCBvbiB0ZXN0aW5nPwo+IAo+IElm
IHdlIGNhbiBjb25maXJtIHRoYXQgdGhpcyBpcyBpbmRlZWQgYSBidWcsIEkgY2FuIHN1Ym1pdCBh
IHNlcGFyYXRlIGZpeC4KPiAKPiBJIHdvdWxkIGdyZWF0bHkgYXBwcmVjaWF0ZSBpdC4KPiAKPiBU
aGFua3MuCgpIaSBDb2lhLAoKSSBoYXZlIHRlc3RlZCB0aGlzIHBhdGNoIGFuZCBpdCB3b3JrcyBv
biBXYW5neHVuIE5JQ3MsIHRoYW5rcy4KClRoZSBjb21taXQgMmEyMmI3YWUyZmEzICgibmV0OiBw
Y3M6IHhwY3M6IGFkYXB0IFdhbmd4dW4gTklDcyBmb3IgU0dNSUkgbW9kZSIpCmlzIHRvbyBsb25n
IGFnbyBmb3IgbWUgdG8gcmVjYWxsIGV4YWN0bHkgd2hhdCB0aGF0IHRob3VnaHQgd2FzLgoKVGhl
IGxvZyBzaG93czoKCiJPbiB0aGlzIGRldmljZSwgQ0wzN19BTlNHTV9TVFMgKGJpdFs0OjFdIG9m
IFZSX01JSV9BTl9JTlRSX1NUUykgaW5kaWNhdGVzCnRoZSBzdGF0dXMgcmVjZWl2ZWQgZnJvbSBy
ZW1vdGUgbGluayBkdXJpbmcgdGhlIGF1dG8tbmVnb3RpYXRpb24sIGFuZApzZWxmLWNsZWFyIGFm
dGVyIHRoZSBhdXRvLW5lZ290aWF0aW9uIGlzIGNvbXBsZXRlLgpNZWFud2hpbGUsIENMMzdfQU5D
TVBMVF9JTlRSIHdpbGwgYmUgc2V0IHRvIDEsIHRvIGluZGljYXRlIENMMzcgQU4gaXMKY29tcGxl
dGUuIFNvIGFkZCBhbm90aGVyIHdheSB0byBnZXQgdGhlIHN0YXRlIGZvciBDTDM3IFNHTUlJLiIK
CkkgdHJpZWQgdG8gcmVwcm9kdWNlIHRoaXMgaXNzdWUsIGJ1dCBpdCBkaWRuJ3Qgc2VlbSB0byBl
eGlzdC4KSW4gdGhlIGN1cnJlbnQgbG9naWM6CgpsaW5rIHVwIC0+IHJlYWQgc3RhdHVzIGZyb20g
Q0wzN19BTlNHTV9TVFMgLT4gQ0wzN19BTkNNUExUX0lOVFIgbm90IGNsZWFyCmxpbmsgZG93biAt
PiByZWFkIHN0YXR1cyBmcm9tIEJNQ1IgLT4gQ0wzN19BTkNNUExUX0lOVFIgY2xlYXIKCkl0IGFs
c28gd29ya3MsIGFsdGhvdWdoIENMMzdfQU5DTVBMVF9JTlRSIGlzIG5vdCBjbGVhcmVkIGV2ZXJ5
IHRpbWUsIGFuZCBBTgpyZXN0YXJ0IGlzIGFic2VudC4gQnV0IEJNQ1IgbG9va3MgbGlrZSBpdCBv
bmx5IHdhbnRzIHRvIGJlIHJldHVybiBhcyAwLCBpdCBpcwp3ZWlyZC4KClNvIEkgdGhpbmsgV2Fu
Z3h1biBOSUNzIGFsc28gY2FuIGJlIGFwcGxpZWQgdG8gZ2VuZXJhbCBjb2RlIGFzIHdlbGwsIGZv
cgpnZXR0aW5nIHN0YXRlIGluIEMzNyBTR01JSSBtb2RlLgoKSG93ZXZlciwgSSBhbSB3b25kZXJp
bmcgd2hldGhlciBDTDM3X0FOQ01QTFRfSU5UUiBjbGVhciBhbmQgQU5SRVNUQVJUIGFyZQpuZWNl
c3NhcnkuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
