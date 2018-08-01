From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: Convert drm_atomic_helper_suspend/resume()
Date: Wed, 01 Aug 2018 14:33:36 +0200
Message-ID: <16141309.kTfAWOe8rM@phil>
References: <20180731203430.GA30136@jordon-HP-15-Notebook-PC>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180731203430.GA30136@jordon-HP-15-Notebook-PC>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: ajitn.linux@gmail.com, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SGkgU291cHRpY2ssCgpBbSBEaWVuc3RhZywgMzEuIEp1bGkgMjAxOCwgMjI6MzQ6MzAgQ0VTVCBz
Y2hyaWViIFNvdXB0aWNrIEpvYXJkZXI6Cj4gY29udmVydCBkcm1fYXRvbWljX2hlbHBlcl9zdXNw
ZW5kL3Jlc3VtZSgpIHRvIHVzZQo+IGRybV9tb2RlX2NvbmZpZ19oZWxwZXJfc3VzcGVuZC9yZXN1
bWUoKS4KPiAKPiBXaXRoIHRoaXMgY29udmVyc2lvbiwgcm9ja2NoaXBfZHJtX2ZiX3Jlc3VtZSgp
IGFuZAo+IHJvY2tjaGlwX2RybV9mYl9zdXNwZW5kKCkgd2lsbCBub3QgYmUgdXNlZCBhbnltb3Jl
Lgo+IEJvdGggb2YgdGhlc2UgZnVuY3Rpb25zIGNhbiBiZSByZW1vdmVkLgo+IAo+IEFsc28sIGlu
IHN0cnVjdCByb2NrY2hpcF9kcm1fcHJpdmF0ZSBzdGF0ZSB3aWxsIG5vdCBiZQo+IHVzZWQgYW55
bW9yZS4gU28gdGhpcyBjYW4gYmUgcmVtb3ZlZCBmb3JldmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFNvdXB0aWNrIEpvYXJkZXIgPGpyZHIubGludXhAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEFqaXQgTmVnaSA8YWppdG4ubGludXhAZ21haWwuY29tPgoKdGhlIHBhdGNoIGl0c2VsZiBsb29r
cyBncmVhdCwganVzdCBhIHNpbXBsZSBib29ra2VlcGluZyBxdWVzdGlvbi4KCldoYXQgcm9sZSBk
aWQgQWppdCBwbGF5IGluIGNyZWF0aW5nIHRoZSBwYXRjaD8gSWYgSSByZW1lbWJlciBjb3JyZWN0
bHkKaXQgaXMgbWVhbnQgdG8gYmUKLSAxc3QgU2lnbmVkLW9mZjogUGF0Y2gtQXV0aG9yCi0gMm5k
IFNpZ25lZC1vZmY6IEUtTWFpbCBzZW5kZXIgKyBwYXRjaCBwb3NzaWJseSBwYXRjaCBjaGFuZ2Vz
CihvcHRpb25hbCBvZiBjb3Vyc2UgaWYgdGhlIHNhbWUpCgpTbyB3YXMgdGhpcyBtZWFudCB0byBi
ZSBhIFJldmlld2VkLWJ5IGZyb20gQWppdD8KCgpUaGFua3MKSGVpa28KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0
CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
