From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/2] drm/rockchip: Properly adjust to a true clock in
 adjusted_mode
Date: Sun, 16 Jun 2019 15:41:22 +0200
Message-ID: <2111307.tjTOxoAehH@diego>
References: <20190614224730.98622-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20190614224730.98622-1-dianders@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Douglas Anderson <dianders@chromium.org>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, urjaman@gmail.com, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, Yakir Yang <ykk@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gU2Ftc3RhZywgMTUuIEp1bmkgMjAxOSwgMDA6NDc6MjkgQ0VTVCBzY2hyaWViIERvdWdsYXMg
QW5kZXJzb246Cj4gV2hlbiBmaXhpbmcgdXAgdGhlIGNsb2NrIGluIHZvcF9jcnRjX21vZGVfZml4
dXAoKSB3ZSdyZSBub3QgZG9pbmcgaXQKPiBxdWl0ZSBjb3JyZWN0bHkuICBTcGVjaWZpY2FsbHkg
aWYgd2UndmUgZ290IHRoZSB0cnVlIGNsb2NrIDI2NjY2NjY2NyBIeiwKPiB3ZSdsbCBwZXJmb3Jt
IHRoaXMgY2FsY3VsYXRpb246Cj4gICAgMjY2NjY2NjY3IC8gMTAwMCA9PiAyNjY2NjYKPiAKPiBM
YXRlciB3aGVuIHdlIHRyeSB0byBzZXQgdGhlIGNsb2NrIHdlJ2xsIGRvIGNsa19zZXRfcmF0ZSgy
NjY2NjYgKgo+IDEwMDApLiAgVGhlIGNvbW1vbiBjbG9jayBmcmFtZXdvcmsgd29uJ3QgYWN0dWFs
bHkgcGljayB0aGUgcHJvcGVyIGNsb2NrCj4gaW4gdGhpcyBjYXNlIHNpbmNlIGl0IGFsd2F5cyB3
YW50cyBjbG9ja3MgPD0gdGhlIHNwZWNpZmllZCBvbmUuCj4gCj4gTGV0J3Mgc29sdmUgdGhpcyBi
eSB1c2luZyBESVZfUk9VTkRfVVAuCj4gCj4gRml4ZXM6IGI1OWI4ZGUzMTQ5NyAoImRybS9yb2Nr
Y2hpcDogcmV0dXJuIGEgdHJ1ZSBjbG9jayByYXRlIHRvIGFkanVzdGVkX21vZGUiKQo+IFNpZ25l
ZC1vZmYtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPiBTaWdu
ZWQtb2ZmLWJ5OiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KPiBSZXZpZXdlZC1i
eTogWWFraXIgWWFuZyA8eWtrQHJvY2stY2hpcHMuY29tPgoKSSBnYXZlIGJvdGggcGF0Y2hlcyBh
IHRlc3RydW4gb24gcmszMjg4LCByazMzMjggYW5kIHJrMzM5OSBhbmQKYXBwbGllZCB0aGVtIHRv
IGRybS1taXNjLW5leHQgdGhlcmVhZnRlcgoKClRoYW5rcwpIZWlrbwoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0
CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWw=
