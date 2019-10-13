From: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
Date: Sun, 13 Oct 2019 10:45:09 +0200
Message-ID: <29d12079-d888-e090-da5a-c407c13d696b@web.de>
References: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
 <5801053.xxhhKtLrcJ@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <5801053.xxhhKtLrcJ@diego>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org
Cc: Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Aditya Pakki <pakki001@umn.edu>, Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>, Navid Emamdoost <emamd001@umn.edu>, Stephen McCamant <smccaman@umn.edu>
List-Id: linux-rockchip.vger.kernel.org

Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jP2lkPTFjMGNj
NWYxYWU1ZWU1YTY5MTM3MDRjMGQ3NWE2ZTk5NjA0ZWUzMGEjbjkxMwo+PiBodHRwczovL2VsaXhp
ci5ib290bGluLmNvbS9saW51eC92NS40LXJjMi9zb3VyY2UvZHJpdmVycy9jbGsvcm9ja2NoaXAv
Y2xrLXBsbC5jI0w5MTMKPj4KPj4gKiBEbyB5b3UgZmluZCB0aGUgdXNhZ2Ugb2YgdGhlIGZvcm1h
dCBzdHJpbmcg4oCcJXM6IGNvdWxkIG5vdCBhbGxvY2F0ZQo+PiAgIHJhdGUgdGFibGUgZm9yICVz
XG7igJ0gc3RpbGwgYXBwcm9wcmlhdGUgYXQgdGhpcyBwbGFjZT8KPgo+IElmIHRoZXJlIGlzIGFu
IGludGVybmFsICJuby1tZW1vcnkiIG91dHB1dCBmcm9tIGluc2lkZSBrbWVtZHVwIG5vdywKPiBJ
IGd1ZXNzIHRoZSBvbmUgaW4gdGhlIGNsb2NrIGRyaXZlciB3b3VsZCBiZSBhIGR1cGxpY2F0ZSBh
bmQgY291bGQgZ28gYXdheS4KCkhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdG8gcmVjaGVjayBpbmZv
cm1hdGlvbiBzb3VyY2VzIGFyb3VuZAp0aGUgTGludXggYWxsb2NhdGlvbiBmYWlsdXJlIHJlcG9y
dD8KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2NvZGluZy1zdHlsZS5yc3Q/
aWQ9ZGE5NDAwMTIzOWNjZWI5M2MxMzJhMzE5MjhkNmRkYzQyMTQ4NjJkNSNuODc4CgoKPj4gKiBJ
cyB0aGVyZSBhIG5lZWQgdG8gYWRqdXN0IHRoZSBlcnJvciBoYW5kbGluZyBoZXJlPwo+Cj4gVGhl
cmUgaXMgbm8gbmVlZCBmb3IgYWRkaXRpb25hbCBlcnJvciBoYW5kbGluZy4KCklmIHlvdSB3b3Vs
ZCBsaWtlIHRvIG9taXQgdGhlIG1hY3JvIGNhbGwg4oCcV0FSTuKAnSwgSSB3b3VsZCBleHBlY3Qg
YWxzbwp0byBleHByZXNzIGEgY29ycmVzcG9uZGluZyBudWxsIHBvaW50ZXIgY2hlY2suCgoKPiBM
aWtlIGlmIHRoZSByYXRlLXRhYmxlIGNvdWxkIG5vdCBiZSBkdXBsaWNhdGVkLAo+IHRoZSBjbG9j
ayB3aWxsIHN0aWxsIHJlcG9ydCB0aGUgY29ycmVjdCBjbG9ja3JhdGUKPiB5b3UgY2FuIGp1c3Qg
bm90IHNldCBhIG5ldyByYXRlLgoKSG93IG11Y2ggd2lsbCBhIGRpZmZlcmVudCBzeXN0ZW0gY29u
ZmlndXJhdGlvbiBtYXR0ZXIgZmluYWxseT8KKERvIHlvdSByZWFsbHkgd2FudCB0byB0cmVhdCB0
aGlzIHNldHRpbmcgYXMg4oCcb3B0aW9uYWzigJ0/KQoKCj4gQW5kIGZvciBhIHN5c3RlbSBpdCdz
IGFsd2F5cyBiZXR0ZXIgdG8gaGF2ZSB0aGUgY2xvY2sgZHJpdmVyIHByZXNlbnQKPiB0aGFuIGZv
ciBhbGwgZGV2aWNlLWRyaXZlcnMgdG8gZmFpbCBwcm9iaW5nLiBFc3BlY2lhbGx5IGFzIHRoaXMg
c3RhcnQgYXMKPiBjb3JlIGNsb2NrIGRyaXZlciwgc28gdGhlcmUgaXMgbm8gZGVmZXJyaW5nIHBv
c3NpYmxlLgoKSSBpbWFnaW5lIHRoYXQgc3VjaCBhIHZpZXcgY2FuIGJlIGNsYXJpZmllZCBmdXJ0
aGVyLgoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
